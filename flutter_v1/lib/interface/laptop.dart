// 일반 클래스를 사용한 방법
import 'dart:io';

class Laptop {
  turnOn() {
    stdout.writeln('전원을 켭니다.');
  }

  turnOff() {
    stdout.writeln('전원을 끕니다.');
  }
}

class MacBook implements Laptop {
  @override
  turnOff() {
    stdout.writeln('맥북 전원을 켭니다.');
  }

  @override
  turnOn() {
    stdout.writeln('맥북 전원을 끕니다.');
  }
}

void main(){
  MacBook macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}
