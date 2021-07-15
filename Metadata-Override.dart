class A {
  @override
  noSuchMethod(Invocation invocation) {
    print('沒有找到該方法');
  }
}

void main() {
  dynamic a = A();
  a.message(); //沒有找到該方法
}
