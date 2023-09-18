import 'dart:io';

void main(){
  // 1. null에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  // 문자열 값이 null이 아니면 문자열 길이를 리턴하고 null 이면 길이값 0을 리턴한다.
  int length = maybeName?.length ?? 0;
  stdout.writeln('length : $length');

  // 2. null에 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 반환 가능
  String returnName = name?.toLowerCase() ?? 'HONG';
  stdout.writeln('returnName : $returnName');

  // 3
  String dispalyName = name ?? "Unknown";
  stdout.writeln('dispalyName : $dispalyName');
}

// 함수
String? getName() {
  return null;
}