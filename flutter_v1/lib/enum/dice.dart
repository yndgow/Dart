// 도전 과제 - 주사위 게임을 만드시오.
// 1. 단 주사위에 숫자는 열거형으로 설계하시오.(enum)
// 2. dart:math; 랜덤 변수 하나는 뽑으시오.
// 3. switch 구문을 활용해서 패턴 매칭을 시키시오. enum - 랜덤 숫자

import 'dart:math';

enum Dice { one, two, three, four, five, six }

void main() {
  int value = Random().nextInt(5) + 1;

  switch (value) {
    case 1:
      print(Dice.one);
    case 2:
      print(Dice.two);
    case 3:
      print(Dice.three);
    case 4:
      print(Dice.four);
    case 5:
      print(Dice.five);
    case 6:
      print(Dice.six);
  }
}
