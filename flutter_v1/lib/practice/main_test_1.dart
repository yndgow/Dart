import 'dart:io';
import 'package:flutter_v1/practice/student.dart';
import 'package:flutter_v1/practice/subway.dart';

void main() {
  Subway line1 = Subway(1, 0, 0);
  Subway line2 = Subway(2, 0, 0);

  Student student1 = Student('티모', 10000);
  Student student2 = Student('아스오', 10000);
  Student student3 = Student('야스오', 10000);

  student1.takeSubway(line1);
  line1.showInfo();

  stdout.writeln('----------------');

  student2.takeSubway(line2);
  student3.takeSubway(line2);

  line2.showInfo();
}
