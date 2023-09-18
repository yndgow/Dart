// 사용 방법 - 선언 방법
import 'dart:io';

class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

void main() {
  // 1단계
  var stringBox = Box<String>('Hello, Dart!!');
  stdout.writeln(stringBox.getValue());

  // 2단계
  var intBox = Box<int>(50);
  stdout.writeln(intBox.getValue());

  var numbers = [1, 2, 3, 4, 5];
  var firstEven = findFirst(numbers, (n) => n % 2 == 0);
  stdout.writeln('first Even : $firstEven');
  var firstOdd = findFirst(numbers, (n) => n % 2 != 0);
  stdout.writeln('first Odd : $firstOdd');
  var lastEven = findLastEven(numbers, (n) => n % 2 == 0);
  stdout.writeln('last Even : $lastEven');
  // var lastEven2 = findLastEven2(numbers, (n) => n % 2 == 0);
  // stdout.writeln('last Even2 : $lastEven');

}

// 제네릭 함수에 사용
T? findFirst<T>(List<T> items, bool Function(T) check) {
  var count = 0;
  // 처음부터 끝까지 반복 처리
  for (var i in items) {
    count++;
    stdout.writeln('count : $count , item : $i');
    // check 함수이다.
    // check 함수는 어떤 데이터 타입이든 매개변수로 담을 수 있다.
    // check 함수에 구현 부분은 사용 시점에 구현하고, 단 그 구현의 결과 데이터 타입은 bool 형태가 되어야 한다.
    if (check(i)) {
      return i;
    }
  }
  return null;
}

T? findLastEven<T>(List<T> items, bool Function(T) check) {
  // 여기 안의 식을 완성해주세요.
  var reversedItems = items.reversed;

  for (var i in reversedItems) {
    if(check(i)){
      int j = items.indexOf(i);
      stdout.writeln('count : ${j + 1}, item : $i');
      return i;
    }
  }
  return null;
}

// 수업
int? findLastEven2<T>(List<int> items, bool Function(T) check){
  for(int i = items.length -1; i >=0; i--){
    if(items[i] != null){
      if(items[i] % 2 == 0){
        return items[i];
      }
    }
  }
  return null;
}
