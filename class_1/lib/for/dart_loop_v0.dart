/*
도전문제
1. 숫자가 홀수인지 짝수인지 확인하기 위해 다트 프로그램을 작성하십시오.
2. 숫자가 양수인지 음수인지 0인지 확인하는 다트 프로그램을 작성하십시오.
3. 알파벳 문자가 모음인지 자음인지 확인하는 다트 프로그램을 작성하십시오.
4. 이중 for문을 사용하여 구구단 출력
5. 별찍기
 */

import 'dart:io';

void main(){
  while(true){
    print('실행하고자하는 프로그램 번호를 입력하세요.');
    print('1.짝수홀수 \n2.음수양수 \n3.자음모음 \n4.구구단 \n5.별찍기 \n0.종료');
    String? num = stdin.readLineSync();
    switch(num){
      case '1':
        deterMineOddEven();
        break;
      case '2':
        deterMineNegativePostiveNum();
        break;
      case '3':
        deterMineAlphabet();
        break;
      case '4':
        multiTables();
        break;
      case '5':
        printStars();
        break;
      case '0':
        print('프로그램 종료');
        return;
      default:
        print('정확한 숫자를 입력하세요');
        break;
    }
  }
}

void deterMineOddEven(){
  print('숫자를 입력해주세요.');
  String? number1 = stdin.readLineSync();
  if(number1 != null && !number1.contains(RegExp(r'[a-z]'))){
    int parseNum = int.parse(number1);
    if(parseNum % 2 == 0){
      print('입력하신 숫자는 짝수입니다.');
    }else{
      print('입력하신 숫자는 홀수입니다.');
    }
  }else{
    print('숫자를 입력해주세요!');
  }
}
void deterMineNegativePostiveNum(){
  print('숫자를 입력해주세요.');
  String? number2 = stdin.readLineSync();
  if(number2 != null){
    int parseNum = int.parse(number2);
    if(parseNum > 0){
      print('입력하신 숫자는 양수입니다.');
    }else if (parseNum < 0) {
      print('입력하신 숫자는 음수입니다.');
    }else{
      print('입력하신 숫자는 0입니다.');
    }
  }else{
    print('숫자를 입력해주세요!');
  }
}

void deterMineAlphabet(){
  List<String> arrayX = ['a', 'e', 'i', 'o', 'u'];
  print('알파벳을 입력하세요.');
  String? alp = stdin.readLineSync()!.toLowerCase();
  if(alp.length == 1 && alp.contains(RegExp(r'[a-z]'))){
    if(arrayX.contains(alp)){
      print('모음입니다.');
    }else{
      print('자음입니다.');
    }
  }else{
    print('영어 알파벳을 하나만 입력해주세요.');
  }
}
void multiTables(){
  for(int i = 2; i < 10; i++){
    for(int j = 1; j < 10; j++){
      stdout.write('$i * $j = ${i * j}  ');
      if(j == 3 || j == 6 || j == 9){
        print('');
      }
    }
  }
}
void printStars(){
  for(int i = 0; i < 3; i++){
    for(int j = 0; j <= 2 * i; j++){
      stdout.write('*');
    }
    stdout.writeln();
  }
  print('------------------');
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 5-(2*i) ; j++){
      stdout.write('*');
    }
    stdout.writeln();
  }
  print('------------------');
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++) {
      stdout.write('*');
    }
  stdout.writeln();
  }

}