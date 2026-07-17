// Put your code here
int score(String word){
  final sV = const{
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
  input.split('').forEach((ch){
    sV.forEach((key , value){
      if (value.contains(ch)){
        total += key;
      }
    });
  });
    return total;
}