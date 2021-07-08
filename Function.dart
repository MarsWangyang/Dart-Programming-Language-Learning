//***No Overload function in Dart***

//-----Standard Function-----
int Add(int x) {
  return x + 1;
}

//-----Optional Function-----
int add(int x, [int y = 12, int z = 10]) {
  return x + y;
}

//-----named參數----- => 可以明確指定參數設定哪個值，用{}
int addA({int x = 1, int y = 2, int z = 3}) {
  return x + y + z;
}

//-----Function return Object-----
Function makeAdd(int x) {
  //return的會是一個function
  return (int y) => x + y;
}

void main() {
  var a = Add(10);
  print(a); // 11

  var b = add(10, 11);
  print(b); // 21

  var c = add(10);
  print(c); // 22

  var d = addA(x: 10, y: 5);
  print(d); // 18

  int addC(int x) {
    //addC此function的作用區域只能在main裡面驅動
    return x + 1;
  }

  var e = addC(10);
  print(e); // 11

  var addfunc = makeAdd(10); //這邊return function: addFunc
  var f = addfunc(5); //這裡是執行(int y) => x+y，所以y=5, x=10 -> 10 + 5
  print(f); // 15
}
