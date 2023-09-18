import 'dart:io';

void main(){

  String? name = 'John';
  // String? name = null;
  String nameNotNullable = name!;

  stdout.writeln('name : $name');
}