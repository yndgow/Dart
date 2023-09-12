// 통장 클래스 만들기
import 'dart:io';

class Passbook{
  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  // 축약형 get, set 메서드 만들기
  String? get name => _name;
  String? get accountNumber => _accountNumber;
  int? get accountBalance => _accountBalance;

  set name(String? name) => _name = name;
  set accountNumber(String? accountNumber) => _accountNumber = accountNumber;
  set accountBalance(int? accountBalance) => _accountBalance = accountBalance;

  Passbook(this._name, this._accountNumber, this._accountBalance);

  void deposit(int money) {
    _accountBalance = (_accountBalance ?? 0) + money;
    stdout.writeln('입금완료');
  }

  int withdraw(int money){
    int currentMoney = this._accountBalance ?? 0;
    if(currentMoney < money){
      stdout.writeln('잔액부족');
      return 0;
    }else{
      currentMoney -= money;
      _accountBalance = currentMoney;
      return money;
    }
  }
}