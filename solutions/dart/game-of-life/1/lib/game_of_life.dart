class GameOfLife {
  List<List<int>> _grid;

  GameOfLife(List<List<int>> initialMatrix)
      : _grid = _cloneMatrix(initialMatrix);

  /// Returns a copy of the current matrix so external callers
  /// cannot accidentally mutate internal game state.
  List<List<int>> matrix() => _cloneMatrix(_grid);

  /// Advances the game state by one generation.
  void tick() {
    if (_grid.isEmpty || _grid[0].isEmpty) {
      return;
    }

    final int rows = _grid.length;
    final int cols = _grid[0].length;
    final List<List<int>> nextGrid = List.generate(
      rows,
      (_) => List.filled(cols, 0),
    );

    const List<List<int>> directions = [
      [-1, -1], [-1, 0], [-1, 1],
      [ 0, -1],          [ 0, 1],
      [ 1, -1], [ 1, 0], [ 1, 1],
    ];

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        int liveNeighbors = 0;

        for (final dir in directions) {
          final int nr = r + dir[0];
          final int nc = c + dir[1];

          if (nr >= 0 && nr < rows && nc >= 0 && nc < cols) {
            liveNeighbors += _grid[nr][nc];
          }
        }

        final int isAlive = _grid[r][c];
        if ((isAlive == 1 && (liveNeighbors == 2 || liveNeighbors == 3)) ||
            (isAlive == 0 && liveNeighbors == 3)) {
          nextGrid[r][c] = 1;
        }
      }
    }

    _grid = nextGrid;
  }

  static List<List<int>> _cloneMatrix(List<List<int>> source) {
    return source.map((row) => List<int>.from(row)).toList();
  }
}