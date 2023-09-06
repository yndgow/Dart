// 코드의 시작점
import 'dart:io';

void main(){
  // 도전 문제
  // 코드에서 마지막 값 10 다음에 , 를 제거하고 출력하는 코드를 작성하시오.
  const String comma = ',';
  for(int i = 1; i <= 10; i++){
    // 콘솔창에서 입력받는 명령어 stdin.re...
    // 출력하는 명령어는 print, stdout 차이는 줄바꿈
    stdout.write('$i');
    if(i == 10){
      continue;
    }
    stdout.write('$comma ');

  }

}