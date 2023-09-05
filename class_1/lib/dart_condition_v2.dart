import 'dart:io';

void main(){

  const String gradeOfA = 'A';
  const String gradeOfB = 'B';
  const String gradeOfC = 'C';
  const String gradeOfF = 'F';

  print('학생의 성적을 입력하고 엔터키를 눌러주세요');
  // String != String? (다른 타입이다) // dart 2.2이후부터 도입
  // int? a; nullable 이란 null 값을 허용한다.
  String? input = stdin.readLineSync(); // 콘솔창에서 입력값을 받을 수 있다.
  print('사용자가 입력한 값 $input');
  print('사용자가 입력한 타입 ${input.runtimeType}');
  // null 값이 들어올 수 있다. --> 방어적 코드를 작성해줘야한다.
  if(input != null){
    // 파싱 오류가 발생했을 때 0으로 처리하라
    int integerValue = int.tryParse(input) ?? 0;

    if(integerValue >= 90){
      print('당신의 성적은 $gradeOfA');
    }else if(integerValue >= 80){
      print('당신의 성적은 $gradeOfB');
    }else if(integerValue >= 70){
      print('당신의 성적은 $gradeOfC');
    }else{
      print('당신의 성적은 $gradeOfF');
    }
  } // end od outer if
  print('프로그램을 종료합니다.');
}
