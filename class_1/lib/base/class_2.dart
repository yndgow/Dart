void main() {
  double doubleValue = 3.14;
  print(doubleValue);
  int intValue = doubleValue.toInt(); // 데이터 손실
  print(intValue);
  print('------------------------------');

  int intValue2 = 33;
  double doubleValue2 = intValue2.toDouble();
  print(doubleValue2);

  print('------------------------------');
  String stringValue = doubleValue2.toString();
  print('stringValue is $stringValue');

  // 실행 시점에 데이터 타입을 확인하고 싶다면
  print('------------------------------');
  print('stringValue is ${stringValue.runtimeType}');
  print('doubleValue2 is ${doubleValue2.runtimeType}');
  print('intValue2 is ${intValue2.runtimeType}');

  // L value = R value
  print('------------------------------');
  int intValue3 = 88;
  // double doubleValue3 = intValue2 as double; // 실행 오류, 런타임 시 오류 발생
  // print(doubleValue3);
}
