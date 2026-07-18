class EggCounter {
  // Your code goes here.
  int count(int decimal) {
    var countOnes = 0;
    while(decimal != 0){
      if (decimal % 2 == 1){
        countOnes += 1;
      }
      decimal = (decimal / 2).toInt();
    }
    return countOnes;
  }
}