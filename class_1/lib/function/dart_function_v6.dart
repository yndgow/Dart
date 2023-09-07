void main() {
  List<String> footballPlayers = ['메시', '손흥민', '김민재', '이강인'];
  // 1단계
  // dart에서 List는 Iterable 인터페이스를 구현하고 있습니다.
  // 리스트는 반복가능한(iterable) 객체입니다라고 말할 수 있다.
  footballPlayers.forEach((e) {
    print(e);
  });
  print('--------------');
  footballPlayers.forEach((e2) => print(e2));
  print('--------------');
  // 3단계 화살표 함수와 하ㅗㄹ요
  List<int> numbers = [10, 20, 30, 40, 50];
  int sum1 = 0;
  int sum2 = 0;

  numbers.forEach((element) {
    sum1 = sum1 + element;
  });
  print('sum1 : $sum1');

  // 3 - 2
  // 화살표 함수로 다시 정의해보자.
  numbers.forEach((e) => sum2 += e);
  print('sum2 : $sum2');

  // 복잡한 함수 body를 표현하기 위해서는 일반적인 함수 정의를 사용해야합니다.
}