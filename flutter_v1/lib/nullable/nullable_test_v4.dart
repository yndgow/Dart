import 'dart:io';

class MyClass {
  late String name;

  void printString() {
    stdout.writeln('name : $name');
  }

  // MyClass() {
  //   // 서버에서 요청한 값을 받아서 클래스를 만들어야 할 때
  //   // 통신을 통해 초기값을 받아야 하는 경우 사용이 가능하다.
  //   name = "홍길동";
  // }
}

void main() {
  final myObject = MyClass();
  myObject.printString();
}
