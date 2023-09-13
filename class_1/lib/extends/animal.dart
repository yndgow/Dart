class Animal{
  String name;
  int age;

  Animal(this.name, this.age);

  void speak(){
    print('$name is making a sound');
  }
}

class Dog extends Animal{
  String breed;

  // Dart에서 허용하지 않습니다.(자바스타일)
  // Dog(String name, int age){
  //   super(name, age);
  // }
  // 1단계
  // Dog(super.name, super.age);

  // 2단계 - 초기화 이니셜라이저(initializer)
  Dog(name, age, this.breed) : super(name, age);

  @override
  void speak() {
    super.speak();
    print('$name 짖다');
  }
}

void main(){
  Dog dog = Dog('바둑이', 3, '치와와');
  dog.speak();
}

