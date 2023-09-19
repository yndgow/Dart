import 'dart:io';

void main() {
  // Future (미래 타입)을 선언해 보자.
  Future<String> name = Future.value('텐코딩');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  stdout.writeln(name);
  stdout.writeln(number);
  stdout.writeln(isTrue);

  stdout.writeln('------END1-----------');

  // Future 타입을 소화시키는 두번째 방법
  // 방법 2 - 콜백 메서드 활용 Future.then(); 함수를 사용할 수 있다.
  name.then((v) => stdout.writeln('Future type에서 값 꺼내기 : $v'));
  number.then((value) => stdout.writeln('값 확인 : $value'));
  isTrue.then((value) => stdout.writeln('값 확인 : $value'));
  stdout.writeln('------END2---------');

}