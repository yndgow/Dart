// 코드의 시작점
void main(){
  /*반복적인 패턴이 보인다면 for, for in, while, do while 구문을 사용하자
  반복문의 보통 조건문과 continue, break와 함께 많이 사용된다.*/

  print('홍길동');
  print('홍길동');
  print('홍길동');

  // 위 코처럼 반복적인 패턴이 보인다면 반복을 사용하자.
  for(int i = 0; i < 10; i++){
    // 조건식이 참일 때 수행되는 영역
    print('이순신');
  }

  // 무한 반복문을 조심하자.
  for(int i = 1; i >= 1; i++){
    print(i);
  }
}