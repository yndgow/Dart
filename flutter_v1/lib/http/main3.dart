import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  // 함수처리 - 통신
  // List<Todo> todos 파싱 까지
  var res = await fetchTodoList();
  var list = json.decode(res.body) as List<dynamic>;
  List<Todo> todoList = list.map((e) => Todo.fromJson(e)).toList();
  stdout.writeln(todoList.length);
}

Future<http.Response> fetchTodoList() async {
  String url = 'https://jsonplaceholder.typicode.com/todos';
  final response = await http.get(Uri.parse(url));
  return response;
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map['userId'],
        id = map['id'],
        title = map['title'],
        completed = map['completed'];
}
