import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
void main() {
  // HTTP 요청 및 응답 처리를 만들어 보자.
  // https://jsonplaceholder.typicode.com/posts/10
  // https://jsonplaceholder.typicode.com/posts

  String url1 = 'https://jsonplaceholder.typicode.com/posts/10';
  String url2 = 'https://jsonplaceholder.typicode.com/posts';

  fetchData(url1).then((value) {
    var jsonMap = jsonDecode(value.body) as Map<String, dynamic>;
    Post post1 = Post.fromJson(jsonMap);
    stdout.writeln('userId : ${post1.userId}');
    stdout.writeln('id : ${post1.id}');
    stdout.writeln('title : ${post1.title}');
    stdout.writeln('body : ${post1.body}');
    stdout.writeln('-------------------');
  });

  fetchData(url2).then((value){
    // stdout.writeln(value.body);
    var jsonList = jsonDecode(value.body) as List<dynamic>;
    // stdout.writeln(jsonList[0].userId);

    List<Post> postList = jsonList.map((json) => Post.fromJson(json)).toList();

    for(var post in postList){
      stdout.writeln('id = ${post.id}, userId = ${post.userId}, title = ${post.title}');
    }


  });
}
// 함수 설계
Future<http.Response> fetchData(String url) async{
  var response = await http.get(Uri.parse(url));
  // stdout.writeln(response.runtimeType);
  return response;
}

class Post {
  int userId;
  int id;
  String title;
  String body;

  Post.fromJson(Map<String, dynamic> map)
      :
        userId = map['userId'],
        id = map['id'],
        title = map['title'],
        body = map['body']
  ;

}
