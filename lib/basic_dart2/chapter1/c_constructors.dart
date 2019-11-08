///构造方法
void main() {
  var person = new Person("Tom", 20, "Male");
  new Person.withName("John");
//  new Person.withAge(20);
}

class Person {
  String name;
  int age;

  String gender;

  Person(this.name, this.age, this.gender);

  Person.withName(this.name);

  void work() {}
}
