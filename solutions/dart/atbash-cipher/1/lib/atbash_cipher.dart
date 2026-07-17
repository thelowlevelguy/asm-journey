class AtbashCipher {
  // Put your code here
  int getSubstitute(int rune, List<String>result, [int count=0]) {
    if ((rune >= 97 && rune <= 122) || (rune >= 48 && rune <= 57)){
      if (rune >= 97 && rune <= 122){
        rune  = 122 - (rune % 97);
      }
      var subs = String.fromCharCode(rune);
      result.add(subs);
      count += 1;
    }
    return count;
  }
  String encode(String str){
    var encode = <String>[];
    var count = 0;
    str.toLowerCase().runes.forEach((int rune){
      count = getSubstitute(rune, encode, count);
      if (count == 5){
        encode.add(' ');
        count = 0;
      }
    });
    return encode.join().trim();
  }
  String decode(String str){
     var decode = <String>[];
     str.toLowerCase().runes.forEach((int rune){
       getSubstitute(rune, decode);
     });
    return decode.join();
  }
}