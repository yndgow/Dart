Dart
==================
Base
------------------
1. class_1 기초, 형변환


```
void main(){
  // body
  print();
}
```
2. class_2 toInt(), toDouble(), toString(), value.runtimeType
3. class_3 final. const  
  const는 컴파일 상수, final은 런타임 상수
-----------------
Condition
-----------------
4. dart_conditon_v1 if  
5. dart_conditon_v2 if ~ else if, stdin.readLineSync(), String?  
  stdin.readLineSync() - dart 에서 터미널 입력을 받고자 할때 사용  
  String? Dart 에서는 null을 기본적으로 인정하지 않기 때문에 nullable을 표현하는 변수를 만들 수 있다.  
  즉 입력값이 null이 들어올 수 있다는 의미이며, 이후 null처리를 해주어야한다.
  ```
String? input = stdin.readLineSync();
  ```
6. dart_conditon_v3 Switch구문
```
Switch(condition){
  case conditionA:
  break;
}
```
7. dart_condition_v4 빠른평가
AND 연산을 할 때 앞의 값이 False이면 뒷 항의 평가는 하지 않고(연산) 넘어간다.
```
  int num = 5; // 변수의 선언과 초기화
  int i = 0;
  //                  15        < 10
  //                        F       &&        T
  bool value = (num = num + 10) < 10 && ((i = i + 2) < 10);
  print(value);
  print('num : $num'); // 기대값 15 실제값 15
  print('i : $i'); // 기대값 2 실제값 0 (빠른 평가 때문에)
```
8. dart_condition_v5 빠른평가 실습
------------------
For
------------------
9. dart_loop_v1 for 기초
반복적인 패턴이 보인다면 for, for in, while, do while 구문을 사용하자  
반복문의 보통 조건문과 continue, break와 함께 많이 사용된다.
```
for(int i = 0; i < 10; i++){
    // 조건식이 참일 때 수행되는 영역
    print('$i');
  }
```
10. dart_loop_v2 break, return, continue
11. dart_loop_v3 for 도전문제 ( 1,2,3...10 ) 출력하기
12. dart_loop_v4 while 1
13. dart_loop_v5 while 2, ++, --, ~/(몫), +=
14. dart_loop_v6 도전문제(1~100까지의 합 구하기)
```
  // 수학적 공식 이용
  int n = 100;
  int total = (n * (n + 1)) ~/ 2;
  print('total is $total');
```
15. dart_loop_v7 List, forEach()
16. dart_loop_v8 for ~ in
17. dart_loop_v0 도전문제 (음수양수, 자음모음, 구구단, 별찍기)
------------------
function
------------------
17. dart_function_v3 익명함수  

익명 함수의 이해  

 1.이름이 없는 함수(선언을 하더라도 다시 호출할 방법이 없다.)    
     변수에 할당하지 않고 바로 익명함수를 재호출하는 것은 안된다.  
 2.함수를 변수에 담을 수 있다.
 
-------------------
12. dart_function_v4 두수를 곱하거나 더하는 익명함수
13. dart_function_v5 화살표함수(익명함수를 화살표함수로)
14. dart_function_v6 forEach() 를 화살표 함수로
15. dart_function_v7 list.map()
16. scope / dart_scope_v1 다트의 스코프
17. math / dart_math_v1 다트의 Math 라이브러리
18. dart_math_v2 Random 클래스로 난수 발생시키기
19. dart_math_v3 도전과제 로또 번호 만들기
