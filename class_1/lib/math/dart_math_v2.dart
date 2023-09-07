import 'dart:math';

void main(){
  // 난수 발생
  // 범위 안에 난수를 발생시키는 방법은?
  const int numberMin = 10;
  const int numberMax = 15;
  Random random = Random();

  // 1 단계
  int randomNumber1 = random.nextInt(numberMax) + 1;
  // 2 단계
  int randomNumber2 = numberMin + random.nextInt(numberMax + 1);
  print(randomNumber2);
  // 3 단계 10 ~ 15
  int randomNumber3 = numberMin + random.nextInt((numberMax + 1) - numberMin);
  print('$numberMin ~ 부터 $numberMax 사이에 랜덤 값 : $randomNumber3');

  // 도전 과제
  // 1 ~ 45 까지 숫자 중 6개를 생성하는 코드를 작성하시오.
  Set<int> lottoArray = {}; // 중복되는 숫자를 없애기 위해서 Set 생성

  while(true){
    int rNum = random.nextInt(45) + 1; // 1 ~ 45의 난수 발생
    lottoArray.add(rNum); // Set 에 추가
    if(lottoArray.length == 6) break; // Set의 길이가 6개 되면 while문 중단
  }
  List<int> toArray = lottoArray.toList(); // Set을 List로 변환
  toArray.sort(); // List를 오름차순으로 정렬
  print(toArray); // 출력
}


