import 'package:flutter_v1/encapsulation/passbook.dart';

void main() {
  Passbook passbook = Passbook('홍길동', '1111', 10000);
  print(passbook.name);
  print(passbook.accountNumber);
  print(passbook.accountBalance);
}
