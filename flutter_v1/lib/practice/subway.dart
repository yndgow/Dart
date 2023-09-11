import 'dart:io';

class Subway {
  int lineNumber;
  int count;
  int money;

  Subway(this.lineNumber, this.count, this.money);

  // 승객을 태우다
  void take(int money) {
    this.money += money;
    count++;
  }
  void showInfo(){
    stdout.writeln('호선 : $lineNumber');
    stdout.writeln('수입 : $money');
    stdout.writeln('승객수 : $count');
  }
}
