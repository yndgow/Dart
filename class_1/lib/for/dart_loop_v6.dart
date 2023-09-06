void main(){

  // .. 수학정 공식 알고 있는가
  // 등차수열 합 공식으로 사용 가능
  int n = 100;
  int total = (n * (n + 1)) ~/ 2;
  print('total is $total');

  // 수학적 - for, while - 나머지 연산자 사용 가능
  // 201에서 250까지의 짝수의 개수를 표시하시오.
  int count = 0;
  for(int i = 201; i < 251; i++){
    if(i % 2 == 0){
      count++;
    }
  }
  print('짝수의 개수는 $count');
}