// 코드의 시작점
void main(){
  // 중간에 멈추는 - break
  for(int i = 0; i < 10; i++) {
    if(i == 5) {
      break; // return 또한 가능 (실행의 제어권을 반환)
    }
    print(i);

  }
  print('----------------------------------');


  // 무시하고 진행하는 - continue
  for(int i = 1; i < 10; i++){
    if(i == 5){
      continue;
    }
    print(i);

  }
}