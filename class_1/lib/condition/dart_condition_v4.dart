void main() {
  // 빠른 평가에 대한 개념을 이해하자

  int num = 5; // 변수의 선언과 초기화
  int i = 0;
  //                  15        < 10
  //                        F       &&        T
  bool value = (num = num + 10) < 10 && ((i = i + 2) < 10);
  print(value);
  print('num : $num'); // 기대값 15 실제값 15
  print('i : $i'); // 기대값 2 실제값 0 (빠른 평가 때문에)

  print('------------------');
  //            25        < 10 || 0 + 2 < 10
  value = (num = num + 10) < 10 || ((i = i + 2) < 10);
  print(value);
  print('num : $num');
  print('i : $i');







}