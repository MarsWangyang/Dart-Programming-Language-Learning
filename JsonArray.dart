import 'dart:convert';

class Student {
  final String name;
  final int age;

  Student(this.name, this.age);

  Student.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  @override
  String toString() => 'Student: {name = $name, age = $age}';

}

void testParseJSONArray() {
  final jsonStr = r'''
      [
        {
          "name": "John",
          "age": 20
        },
        {
          "name": "Peter",
          "age": 22
        }
      ]
  ''';

  final json = jsonDecode(jsonStr);
  print(json); //[{name: John, age: 20}, {name: Peter, age: 22}]
  if (json != null) {
    json.forEach((element) => print(Student.fromJson(element)));
  }
  //Student: {name = John, age = 20}
  //Student: {name = Peter, age = 22}
}

void main() {
  testParseJSONArray();
}