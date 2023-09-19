import 'dart:convert';
import 'dart:io';

/*
 데이터 파싱하기
 */
void main() {
  // 여러 줄의 문자열 ''' '''
  String jsonStr = '''
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
  ''';

  // 1 단계
  // JSON 문자열 형식을 Map 구조로 파싱해보자.
  stdout.writeln('jsonMap : ${json.decode(jsonStr)}');
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    // stdout.writeln('$key : $value');
  });
  // 객체를 생성하여 직접 넣어주는 방법 1
  // Todo todo = Todo(userId, id, title, completed);
  // 명명된 생성자를 사용하여 파싱
  Todo myTodo = Todo.fromJson(jsonMap);
  stdout.writeln('userId : ${myTodo.userId}');
  stdout.writeln('id : ${myTodo.id}');
  stdout.writeln('title : ${myTodo.title}');
  stdout.writeln('completed : ${myTodo.completed}');

}
class Todo{
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자 2 - 이름이 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];
}