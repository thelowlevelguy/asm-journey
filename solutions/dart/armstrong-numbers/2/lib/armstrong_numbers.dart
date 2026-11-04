class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(String strNum){
    var total = BigInt.from(0);
    for (int i = 0; i < strNum.length; i++){
      int tempValue = int.parse(strNum[i]);
      total += BigInt.from(tempValue).pow(strNum.length);
    }
    return total.toString() == strNum;
  }
}