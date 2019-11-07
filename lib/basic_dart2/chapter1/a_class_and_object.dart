import 'person.dart';
///1.类与对象
void main() {
    var person = new Person();
    person.name = "Tom";
    person.age = 20;

    print(person.name);
    print(person.address);

    person.work();
}


