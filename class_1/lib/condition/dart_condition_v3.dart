void main(){
  const weather = 'sunny';
  switch(weather) {
    case 'sunny':
      print('선크림을 발라주세요');
      break;
    case 'snowy':
      print('스키를 타러갈까요');
      break;
    case 'cloudy':
    case 'rainy':
      print('우산을 챙겨 봅시다.');
      break;
    default:
      print('날씨를 모르겠군요 후미진 어느 언덕으로 소풍~');
  }

}
