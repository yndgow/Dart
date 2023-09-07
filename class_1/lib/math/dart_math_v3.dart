void main(){
  List<int> numbers = List<int>.generate(45, (index) => index + 1);
  // print(numbers);
  numbers.shuffle(); // 리스트 섞기
  // print(numbers);
  // 리스트 6 길이 까지 잘라내기
  List<int> subListNumber = numbers.sublist(0, 6);
  print(subListNumber);
  // 정렬하는 기능
  subListNumber.sort();
  print(subListNumber);
}


