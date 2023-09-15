import 'dart:io';

abstract class Shape {
  double area() {
    return 0.0;
  }
}

/*
* 위의 추상클래스의 추상메서드를 구현하고 이를 상속받으면 아무런 문제가 없지만
* implements 로 구현해야한다고 선언하면 반드시 메서드를 재정의해야한다.(강제 규약)
*/
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  List<Shape> shapes = [Circle(5.0), Rectangle(4.0, 5.0)];
  shapes.forEach((e) {
    stdout.writeln(e.area());
  });
}
