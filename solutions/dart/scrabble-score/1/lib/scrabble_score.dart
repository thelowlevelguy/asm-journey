// Put your code here
int score(String word){
  const sV = <int, List<String>>{
    1 : ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2 : ['D', 'G'],
    3 : ['B', 'C', 'M', 'P'],
    4 : ['F', 'H', 'V', 'W', 'Y'],
    5 : ['K'],
    8 : ['J', 'X'],
    10: ['Q', 'Z']
  };
  var input = word.toUpperCase();
  var total = 0;
  input.runes.forEach((int rune){
    var character = new String.fromCharCode(rune);
    sV.forEach((key , value){
      if (value.contains(character)){
        total += key;
      }
    });
  });
    return total;
}