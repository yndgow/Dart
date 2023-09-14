class Employee{
  // static <-- 객체들이 공유할 수 있는 메모리 공간이다.
  // 하지만 static은 해당 객체의 속성 값을 나타내는 것은 아니다.
  String name;
  static int empNum = 1000;
  int? num;

  Employee(this.name){
    num = ++empNum;
  }

  // 함수는 독립적인 일련의 코드 묶음이다.
  // 메서드는 멤버 변수를 활용해서 기능을 구현한다.
  void display() {
    print('이름 : $name');
    print('사원 번호 : $num');
  }
}

void main() {

  // 제약 조건
  // Employee 클래스 안에 사원번호데이터를 받는 변수를 선언하시오.
  // 단, Employee 인스턴스화 되면(객체) 사원 번호는 자동으로 1씩 증가할 수 있도록 만드시오.

  Employee employee1 = Employee('홍길동');
  employee1.display();
  Employee employee2 = Employee('이순신');
  employee2.display();
  employee1.display();
  employee2.display();
  Employee employee3 = Employee('강감찬');
  employee3.display();
  employee1.display();
  employee2.display();

  print('현재 사원번호 : $Employee.empNum');

}