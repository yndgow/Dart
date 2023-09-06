void main(){
  List<String> cardList = ['10', 'J', 'Q', 'K', 'A'];
  for(String card in cardList) {
    print('나의 카드 : $card');
  }

  print('------------------');
  String name = '홍길동';
  // Rune <-- 유니코드
  for(var codePoint in name.runes){
    print('문자표안에 맵핑되어 있는 값 : $codePoint');
  }

}