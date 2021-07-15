//如何自己定義一個註解@ -> 在未來開放API給別人的時候會更佳的有規範性

//1.定義註解類

import 'dart:mirrors';

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

//2.使用註解 (在一個函數上面加上自定義註解)
@Todo('Mars', 'what TV')
void doSomething() {
  print('running doSomething');
}

void main() {
  currentMirrorSystem().libraries.forEach((url, lib) {
    print('lib: ${url}'); //print出所有目前的library
    lib.declarations.forEach((s, decl) {
      //print('decl: $decl'); //print出所有定義好的方法
      decl.metadata.where((m) => m.reflectee is Todo).forEach((element) {
        var anno = element.reflectee as Todo;
        if (decl is MethodMirror) {
          print('Todo(${anno.who}, ${anno.what})');
          ((decl as MethodMirror).owner as LibraryMirror).invoke(s, []);
        }
      });
    });
  });
}
