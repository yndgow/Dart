import 'dart:math';

void main() {
  double r = 5.0;
  double x = 3.0;
  double y = 4.0;
  double result1 = calCircle(r);
  double result2 = calSquare(x, y);

  print('반지름이 $x인 원의 넓이는 $result1입니다.');
  print('가로의 길이가 $x, 세로의 길이가 $y인 직사각형의 넓이는 $result2입니다.');
}

// 원에 면적을 구하는 함수 작성(3.14)
double calCircle(double r){
  return pow(r, 2) * 3.14;
  // print('원의 넓이는 ${r * r * 3.14}');

}

// 직사각형에 면적을 구하는 함수 작성
double calSquare(double x, double y){
  return x * y;
  // print('사격형의 넓이는 ${x * y}');
}
