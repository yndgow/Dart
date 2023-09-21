import 'dart:io';

void main(){
  try{
    int result = 10 ~/ 0;
    stdout.writeln('result : $result');
  }catch(error, stacktrace){
    // 예외 처리 코드
    stdout.writeln('An error : $error');
    stdout.writeln('An error : $stacktrace');

  }finally{
    // 예외 발생 여부와 상관 없이 항상 실행되는 코드
    stdout.writeln('반드시 실행되는 블록');
  }
  stdout.writeln('---------------');
}