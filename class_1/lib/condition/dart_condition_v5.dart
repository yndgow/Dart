void main() {
  // 빠른 평가 연산이 되는 구문을 작성해 보시오
  int value = 0;
  int value2 = 1;

  bool isValue = value < value2;
  int i = 0;
  int j = 0;
  //               F            &&        연산필요X
  isValue = (i = value + 2) < 1 && (j = value2 + 3) > 0;
  print('i = $i, j = $j'); // i = 2, j = 0
  print(isValue);
  print('----------------------------------');
  //               F            ||        연산필요O F
  isValue = (i = value + 2) < 1 || (j = value2 + 3) < 0;
  print('i = $i, j = $j'); // i = 2, j = 4
  print(isValue);
  /*
  앞항의 평가가 False 이면 AND 연산인 경우
  뒷항의 연산이 필요하지 않기 떄문에 j의 값은 0
  앞항의 평가가 False이더라도 OR 연산인 경우
  뒷항의 연산이 필요하므로 j의 값은 4
   */
}