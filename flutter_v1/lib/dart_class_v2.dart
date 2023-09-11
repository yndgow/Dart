// 메인 함수 - 코드의 시작점
import 'dart:io';

void main() {
  Rectangle rectangle = Rectangle();
  try {
    double result = rectangle.calculateArea();
    stdout.writeln('직사각형의 넓이는 : $result');
  } catch (e) {
    stdout.writeln('에러메시지 확인 : $e');
  }

  stdout.writeln('---------------');
  stdout.writeln('에러가 발생해도 여기가 실행이 됩니다.');
}

class Rectangle {
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!; // 개발자가 명시적으로 ! 'null 이 아니다'라고 명시할 수 있음.
  }
}
