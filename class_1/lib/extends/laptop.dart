/// 도전과제
/// Laptop 클래스 설계 - 멤버 데이터 name, color
/// 생성자 정의 name, color
/// MacBook 클래스 설계 Laptop 상속 - 초기화 이니셜 라이즈 사용

class Laptop{
  String? name;
  String? color;

  // Laptop(this.name, this.color);
  Laptop(String name, String color){
    print('Laptop 생성자 호출');
    this.name = name;
    this.color = color;
  }
  

  @override
  String toString() {
    return 'name : $name , color : $color';
  }
}
class MacBook extends Laptop{
  MacBook(name, color) : super(name, color){
    print('초기화 이니셜라이즈에 body를 붙여서 코드를 추가할 수 있다.');
  }
  
}
void main(){
  MacBook bok = MacBook("MacBook Pro", '스페이스그린');
}
