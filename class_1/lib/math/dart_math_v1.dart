import 'dart:math';

void main(){
  // Random random = new Random();
  Random random = Random(); // 최신 버전 new 생략가능

  // int randomNumber = random.nextInt(45); // 0 ~ 44 까지 하나의 난수를 만들어 준다.
  int randomNumber = random.nextInt(45) + 1; // 1 ~ 45
  print(randomNumber);


}


