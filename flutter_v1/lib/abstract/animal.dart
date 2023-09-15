import 'dart:io';

abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal {
  // 메모리에 Animal이 먼저 올라가야 한다.
  // Dog(String name) : super(name);
  Dog(String name) : super(name); // 초기화 이니셜라이져

  @override
  void makeSound() {
    stdout.writeln('$name 이 멍멍합니다.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    stdout.writeln('$name 이 야옹합니다.');
  }
}

void main() {
  List<Animal> animals = [Dog('복순이'), Cat('또순이')];

  for (var a in animals) {
    a.makeSound();
  }
}
