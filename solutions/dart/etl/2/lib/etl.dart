class Etl {
  // Put your code here
  Map<String, int> transform (Map<String, List<String>> legacy){
    var result = <String, int>{};
    legacy.forEach((score, letters){
      letters.forEach((letter){
        result[letter.toLowerCase()] = int.parse(score); //convert score from string to int;
      });
    });
    return result;
  }
}