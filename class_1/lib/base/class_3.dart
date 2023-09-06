void main(){
  final int x = 5; // 상수(런타임 상수)
  // x = 100; 변경불가능
  print(x);
  print('-------------');

  const int y = 10; // 컴파일 상수
  // y = 100; // 변경불가능
  print(y);
  
}