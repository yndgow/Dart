import 'dart:io';
import 'package:http/http.dart' as http;

void main() {
  // https://jsonplaceholder.typicode.com/todos/1
  fetchTodo().then((res){
    stdout.writeln('http status code : ${res.statusCode}');
    stdout.writeln('---------------------');
    stdout.writeln('HTTP Message Header : ${res.headers}');
    stdout.writeln('---------------------');
    stdout.writeln('HTTP Message body : ${res.body}');
  });

  // https://jsonplaceholder.typicode.com/todos;
  fetchTodoList().then((res){
    stdout.writeln('http status code : ${res.statusCode}');
    stdout.writeln('---------------------');
    stdout.writeln('HTTP Message Header : ${res.headers}');
    stdout.writeln('---------------------');
    stdout.writeln('HTTP Message body : ${res.body}');
  });
  
}

// 함수 설계
Future<http.Response> fetchTodo() async{
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  var response = await http.get(Uri.parse(url));
  // stdout.writeln(response.runtimeType);
  return response;
}

Future<http.Response> fetchTodoList(){
  const url = 'https://jsonplaceholder.typicode.com/todos';
  // get 메서드 안에는 URI 객체를 만들어서 던져야 한다.
  var response = http.get(Uri.parse(url));
  return response;
}