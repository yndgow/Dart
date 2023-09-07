void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> squaredNumbers = numbers.map((e) => e * e).toList();
  print(numbers);
  print(squaredNumbers);
}