class Etl {
  // Put your code here
  Map<String, int> transform (Map<String, List<String>> legacy){
    var result = <String, int>{};
    legacy.forEach((key, value){
      value.forEach((value){
        var entry = <String, int>{value.toLowerCase(): int.parse(key)};
        result.addEntries(entry.entries);
      });
    });
    return result;
  }
}