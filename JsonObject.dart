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

  @override
  Map<String, dynamic> toJson() =>
      <String, dynamic>{
        'name': name,
        'age': age,
      };
}

void testParseJsonObject() {
  final jsonStr = r'''
      {
        "name": "John",
        "age": 20
      }
  ''';

  final json = jsonDecode(jsonStr);
  final student = Student.fromJson(json);
  print(student); //=> runtimetype = student
  print(student.toString()); //=> runtimetype = String
  print(student.toJson()['name']); //=>runtimetype = hashmap
}

void main() {
  testParseJsonObject();
}