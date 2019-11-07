///bool
///string
///number(int,double)
///map
///list
///const final static (*)
///dynamic(*)
void main() {
  print("main");

}

void printBool() {
  bool isTrue = true;
  bool isFalse = false;
  print("Hello".isEmpty);
}

void printNumber() {
  num a = 10;
  a = 12.5;

  int b = 20;
//  b = 20.5;

  double c = 10.5;
//  c = 30;

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print(b ~/ c);
  print(b % c);

  print(0.0 / 0.0);

  print(b.isEven);
  print(b.isOdd);
  int d = 11;
  print(d.isEven);
  print(d.isOdd);

  int e = -100;
  print(e.abs());

  double f = 10.5;
  print(f.round());
  print(f.floor());
  print(f.ceil());

  print(f.toInt());
  print(d.toDouble());
}

void printString() {
  String str1 = 'Hello'; //""
  String str2 = '''Hello
                  Dart'''; //"""
  print(str2);

//  String str3 = 'Hello \n Dart';
  String str3 = r'Hello \n Dart';
  print(str3);

  String str4 = "This is my favorite language";
  print(str4 + "New");
  print(str4 * 5);
  print(str3 == str4);
  print(str4[1]);

  int a = 1;
  int b = 2;
  print("a + b = ${a + b}");
  print("a = $a");

  print(str4.length);
  print(str4.isEmpty);

  print(str4.contains("This"));
  print(str4.substring(0, 3));
  print(str4.startsWith("a"));
  print(str4.endsWith("ge"));

  var list = str4.split(" ");
  print(list);

  print(str4.replaceAll("This", "That"));
}

printConst() {
  var a;
  print(a);

  a = 10;
  print(a);

  a = 'Hello Dart';
  print(a);

  var b = 20;
  print(b);

  final c = 30;
//  c = 50;

  const d = 20;
//  d = 50;
}

//const flutter使用场景很多
printFinalAndConst() {
  final name = 'Bob'; // 正确
//  name = 'Alice'; // 错误，final 变量只能赋值一次

//  const name1;  // 错误，const 变量是编译时常量，需要在声明时赋值进行初始化
//  final name1; // 错误，final变量需要在声明时赋值进行初始化
  const name2 = 'Alice';  // 正确

//  const name3 = name; // 错误，name 是个变量，不能赋给const
  final name4 = name2; // 正确，可以把const 常量赋给 final 变量

//  final names1 = const[name, 3, 4];  // 错误，name 是个变量，不能赋给const
  final names2 = const[name2, 'Allen', 'Brian'];

  const names3 = ['A', 'B', 'C'];  // 正确
  const names4 = const['A','B', 'C']; // 正确。

  print(names3[1]);
}

printDynamic() {
  var a;
  a = 10;
  a = "Dart";

  dynamic b = 20;
  b = "JavaScript";

  var list = new List<dynamic>(); //类似泛型
  list.add(1);
  list.add("hello");
  list.add(true);
  print(list);
}

printMap() {
  var map1 = {"first":"Dart",1:true,true:"2"};
  print(map1);

  print(map1["first"]);
  print(map1[true]);
  map1[1] = false;
  print(map1);

  var map2 = const {1:"Dart",2:"Java"};
//  map2[1] = "Python";

  var map3 = new Map();

  var map = {"first":"Dart","second":"Java","third":"Python"};
  print(map.length);
//  map.isEmpty;

  print(map.keys);
  print(map.values);

  print(map.containsKey("first"));
  print(map.containsValue("C"));

  map.remove("third");
  print(map);

  map.forEach(f);

  var list = ["1","2","3"];
  print(list.asMap());
}

void f(key,value){
  print("key=$key,value=$value");
}

printList() {
  var list1 = [1,2,3,"Dart",true];
  print(list1);
  print(list1[2]);
  list1[1] = "Hello";
  print(list1);

  var list2 = const [1,2,3];
//  list2[0] = 5;

  var list3 = new List();

  var list = ["hello","dart"];
  print(list.length);
  list.add("New");
  print(list);

  list.insert(1, "Java");
  print(list);

  list.remove("Java");
  print(list);

//  list.clear();
//  print(list);

  print(list.indexOf("dart1"));
  list.sort();
  print(list);

  print(list.sublist(1));

  list.forEach(print);
}