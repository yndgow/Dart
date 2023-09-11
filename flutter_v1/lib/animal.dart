import 'dart:io';

class Animal {
  // 속성
  String? name;
  String? color;
  int? size;
  int? foot;
  String? site;

  // 기능
  void cry(String sound) {
    stdout.writeln('$name 이/가 $sound 하고 웁니다.');
  }

  void showInfo() {
    stdout.writeln('이름 : $name');
    stdout.writeln('색깔 : $color');
    stdout.writeln('크기 : $size');
    stdout.writeln('발의 개수 : $foot');
    stdout.writeln('지역 : $site');
  }
}

void main() {
  Animal lion = Animal();
  lion.name = '사자';
  lion.color = '갈색';
  lion.size = 120;
  lion.foot = 4;
  lion.site = '아프리카';

  lion.cry('크앙');
  lion.showInfo();
}
