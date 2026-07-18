class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(String strNum){
    var total = BigInt.from(0);
    var numLen = strNum.length;
    strNum.split("").forEach((num){
      var bi = BigInt.parse(num);
      total += bi.pow(numLen);
    });
      return total == BigInt.parse(strNum);
  }
}