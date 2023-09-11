import 'package:flutter_v1/practice/subway.dart';

class Student {
  String name;
  int money;

  Student(this.name, this.money);

  // 학생이 버스를 탄다.
  //학생이 지하철을 탄다.
  void takeSubway(Subway subway) {
    money -= 1300;
    subway.take(1300);
  }
}
