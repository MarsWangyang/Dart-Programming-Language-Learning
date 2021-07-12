void main() {
  //var p = People(); //抽象的class是不能創建instance的
  var t = Teacher();
  t.printName();

  var s = Student();
  s.printName();
}

abstract class People {
  static const String name = 'Mars';
  void printName() {
    print(name);
  }
}

//抽象的class繼承
class Teacher extends People {}

//Dart中沒有Interface
//Interface使用方式
class Student implements People {
  void printName() {
    print('I am students');
  }
}
