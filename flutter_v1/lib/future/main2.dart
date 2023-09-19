import 'dart:io';

void main() async{
  // Future (미래 타입)을 선언해 보자.
  Future<String> name = Future.value('텐코딩');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  stdout.writeln(name);
  stdout.writeln(number);
  stdout.writeln(isTrue);

  stdout.writeln('-----------------');

  // Future 타입을 소화시키는 방법
  // 방법 1 - 코드를 동기적으로 처리하는 방법
  stdout.writeln(await name);
  stdout.writeln(await number);
  stdout.writeln(await isTrue);
}