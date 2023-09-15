// 믹스인 정의 - mixin 키워드를 사용한다.
import 'dart:io';

mixin LoggingMixin {
  String tag = 'LoggingMixin';

  // 믹스인은 생성자를 가질 수 없다.
  // LoggingMixin(this.tag);

  void log(String message) {
    stdout.writeln('Log - $tag : $message');
  }
}

// 믹스인의 활용 - with 키워드 사용
class User with LoggingMixin{
  String name;

  User(this.name);

}

void main(){
  User user = User('홍길동');
  user.tag = 'User';
  user.log('TEST USER CLASS');
  
}
