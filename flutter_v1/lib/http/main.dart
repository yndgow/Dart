import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  // 헤더
  Map<String, String> header = {};
  Todo? todo;

  var res = await fetchTodo();
  if (res.statusCode == 200) {
    stdout.writeln('통신 성공');
    stdout.writeln(res.headers.runtimeType); // 반드시 암기
    stdout.writeln(res.body.runtimeType); // 반드시 암기
    header = res.headers;

    // String --> Map --> Todo
    Map<String, dynamic> httpBody = json.decode(res.body); // String -> map 파싱
    stdout.writeln(httpBody.toString());
    stdout.writeln(httpBody['title']); // 정상출력
    stdout.writeln(httpBody['aaaa']); // null
    stdout.writeln('------------');

    // Map ---> Todo 클래스 타입
    todo = Todo.fromJson(httpBody);
  } else {
    stdout.writeln('통신 실패');
  }
  // 미완료, 완료 - data, error
  
  // 출력
  stdout.writeln(todo?.toString());
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  // {} 명명된 파라미터
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        completed = map['completed'];

  @override
  String toString() {
    return 'userId : $userId, id : $id, title : $title, completed : $completed';
  }
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
}
