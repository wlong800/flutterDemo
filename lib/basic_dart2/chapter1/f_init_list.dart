//初始化列表
void main() {
  var person = new Person("Tom", 20, "Male");
  person.work();
}

class Person {
  String name;
  int age;

  final String gender;

  Person(this.name, this.age, this.gender);

  Person.withMap(Map map)
      : name = map["name"],
        gender = map["gender"] {
    age = map["age"];
  }

  void work() {
    print("Work...");
  }
}
