import 'dart:io';

void main() {

  int result1 = addition(10, 100);
  print(multiplication(10, 10));
  print('두 숫자를 입력하세요');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  // 두 수를 덧셈하는 기능을 만들어주세요
  int sum1 = addition(num1, num2);
  print(sum1);

  // 두 수를 곱셈하는 기능ㅇ르 만들어 주세요
  int sum2 = multiplication(num1, num2);
  print(sum2);
}
// 익명 함수를 변수 담기
var addition = (int a, int b){
  return a + b;
};
var multiplication = (a, b){
  return a * b;
};