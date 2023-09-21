import 'dart:io';

// 예외 던지기
void main(){

  // 1단계
  try{
    // 예외 발생
    throw Exception('Unknown Error');
  } catch(e, s){
    stdout.writeln('예외 발생 : $e');
  }
  stdout.writeln('end of code');
  stdout.writeln('-----------------------');
  // 2단계
  try{
    throw TypeError();
  }on UnsupportedError{
    stdout.writeln('type Error 에러 처리');
  }catch(e, s){
    stdout.writeln('모든 에러 처리');
  }
}