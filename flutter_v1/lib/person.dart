import 'dart:developer';
import 'dart:io';

void main(){
  // Person personKim = new Person(); // Java
  Person personKim = Person();
  personKim.myName = '홍길동';
  personKim.phone = '010-1234-1234';
  personKim.age = 20;
  personKim.displayInfo();
}

// 클래스 설계하기
class Person{
  // dart 2.2 버전 이후 부터 진행
  // Nullable 타입의 이해
  // Dart 이전 버전에서는 모든 변수가 null이 아닌 값으로 셋팅되었다.
  // 명시적으로 null을 허용하는 여부를 표현할 수 있는 타입이 nullable 타입이다.
  String? myName;
  String? phone;
  int? age;

  void displayInfo(){
    //log('Person name: $myName');
    stdout.writeln('Person name : $myName');
    stdout.writeln('Phone number : $phone');
    stdout.write('Person age : $age');

  }

}