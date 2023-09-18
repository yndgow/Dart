import 'dart:io';

void main() {
  String name = 'John'; // 이 name 이라는 변소는 null 아닌 문자열만 가질 수 있다.
  int age = 30; // null 이 아닌 정수값만 가질 수 있다.

  String? nullableName; // 이 변수는 문자열 또는 null 값을 가질 수 있다.
  int? nullableInt; // 이 변수는 정수값 또는 null 값을 가질수 있다.

  // nullable을 사용하지 않을 경우 방어적 코드를 작성해줘야함.
  if(nullableName != null){
    stdout.writeln('name : $nullableName');
  }
}