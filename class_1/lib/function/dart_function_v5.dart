void main() {
  int num1 = 500;
  int num2 = 10;

  print('더하기 ${add1(num1, num2)}');
  print('빼기 ${sub(num1, num2)}');
  print('곱하기 ${mul(num1, num2)}');
  print('나누기 ${div(num1, num2)}');
}

// 익명 함수
int add(int n1, int n2){
  return n1 + n2;
}

// 화살표 함수로 정의
int add1(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(int n1, int n2) => n1 * n2;
double div(int n1, int n2) => n1 / n2;