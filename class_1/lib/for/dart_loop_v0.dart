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
  DeterMineOddEven();
}

void DeterMineOddEven(){
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
void DeterMineNegativePostiveNum(){
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

void DeterMineAlphabet(){}
void MultiTables(){}
void PrintStars(){}