import 'dart:io';

mixin AttackBehavior{
  void attack(Monster target);
}

abstract class Weapon{
  int damage;
  Weapon(this.damage);
}

class Sword extends Weapon{
  Sword(int damage) : super(damage);
}

class Bow extends Weapon{
  Bow(int damage) : super(damage);
}

class Monster with AttackBehavior{
  String name;
  num hp;
  // 무기
  Weapon weapon;

  Monster(this.name, this.hp, this.weapon);

  void showInfo() {
    stdout.writeln('=== 상태 창 ===');
    stdout.writeln('이름 : $name');
    stdout.writeln('무기 데미지 : ${weapon.damage}');
    stdout.writeln('현재 hp : $hp');
  }

  @override
  void attack(Monster target) {
    stdout.writeln('$name 이 ${target.name} 을 공격합니다.');
    target.hp -= weapon.damage;
  }
}

void main(){
  Sword sword = Sword(10);
  Bow bow = Bow(5);

  Monster monster1 = Monster('드래곤', 100, sword);
  Monster monster2 = Monster('고블린', 50, bow);

  monster1.attack(monster2);
  monster1.attack(monster2);
  stdout.writeln('-------------');
  monster2.showInfo();
  stdout.writeln('-------------');
  monster2.attack(monster1);
  monster1.showInfo();
}
