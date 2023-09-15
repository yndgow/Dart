import 'dart:io';

abstract class Shape {
  // 추상 메서드 선언(추상메서드가 존재하면 추상클래스가 되어야한다.)
  double area(); // 메서드의 body가 없고 선언부만 있다.

  // 일반 메서드
  void display() {
    stdout.writeln("This is a shape");
  }
}

// 자식 클래스는 보다 구체적은 클래스로 설계해야 한다.
// 추상클래스(Shape)를 상속받았을때 추상클래스(Circle)로 바꾸거나 추상메서드를 구현해야한다.
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    stdout.writeln('원의 반지름 값은 : $radius');
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    // 구현 메서드
    return width * height;
  }

  @override
  void display() {
    stdout.writeln('직사각형의 가로는 $width , 세로는 $height 입니다.');
  }
}

void main() {
  // 추상 클래스는 new 와 생성자를 호출할 수 없다.(정의는 가능)
  // Shape shape = Shape();

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  List<Shape> shapes = [circle, rectangle];

  for(var s in shapes){
    s.display();
    stdout.writeln(s.area());
    stdout.writeln('--------------');
  }

  // ! dart 에서는 익명 구현 클래스 개념은 없습니다.
}

























