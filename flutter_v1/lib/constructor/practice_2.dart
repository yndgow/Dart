import 'dart:io';

class Student {
  // 필드
  int money;
  String name;

  // 생성자
  Student(this.name, this.money);

  // 메서드
  void takeBus(Bus bus, int money) {
    stdout.writeln('$name 학생이 버스를 탑니다.');
    money = 1300;
    stdout.writeln('버스비를 $money원 지불합니다.');
    this.money -= money;
    stdout.writeln('현재 $name 학생의 잔액은 ${this.money}원 입니다.');
    bus.take(name, money);
  }
}

class Bus {
  // 필드
  int money;
  int count;
  List<String> listPass;

  // 생성자
  Bus({this.count = 0, this.money = 0, required this.listPass});

  // 메서드
  void take(String name, int money) {
    count++;
    stdout.writeln('승객수가 증가합니다. 현재 승객수는 $count명 입니다.');

    this.money += money;
    stdout.writeln('현재 요금 총액은 ${this.money}원 입니다.');
    listPass.add(name);
    stdout.writeln('현재 버스에 탄 사람은 $listPass 입니다.');
  }
}

void main() {
  Bus num100 = Bus(listPass: []);
  Student st1 = Student('홍길동', 10000);
  st1.takeBus(num100, 1300);
  Student st2 = Student('이순신', 10000);
  st2.takeBus(num100, 1300);
  // st1.takeBus(num100, 1300);
}
