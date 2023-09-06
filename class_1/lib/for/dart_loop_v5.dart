void main(){
  // while 구문으로 n 개의 자연수의 합 표시하기(1부터 100까지의 합)
  int total = 0;
  int n = 100;
  int i = 1;

  // dart 에서 ~/ 연산자는 나눗셈의 몫을 구하는 연산자이다.
  while(i <= n){
    // total = total + i;
    total += i;
    i++;
  }
  print(total);
}