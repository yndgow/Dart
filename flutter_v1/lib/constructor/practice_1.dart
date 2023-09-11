import 'dart:io';
import 'dart:math';

class Circle {
  // 필드
  num radius;

  // 생성자
  Circle(this.radius);

  // 메서드
  double calCircle() {
    return pow(radius, 2) * 3.14;
  }
}

class Rectangle1 {
  // 필드
  num width;
  num height;

  // 생성자
  Rectangle1(this.width, this.height);

  // 메서드
  num calRectangle1() {
    return height * width;
  }
}

void main(){
  Circle circle1 = Circle(4);
  double result1 = circle1.calCircle();
  stdout.writeln(result1);

  Circle circle2 = Circle(5.2);
  double result2 = circle2.calCircle();
  stdout.writeln(result2);

  Rectangle1 nemo1 = Rectangle1(4, 6);
  num result3 = nemo1.calRectangle1();
  stdout.writeln(result3);

  Rectangle1 nemo2 = Rectangle1(10.4, 6.8);
  num result4 = nemo2.calRectangle1();
  stdout.writeln(result4);
}
