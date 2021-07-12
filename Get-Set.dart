class People {
  var _name; //設定成為private variable

  //pro: 可以自定義參數的加工
  set pName(String value) {
    _name = value;
  }

  String get pName {
    return 'my name is ${_name}';
  }

  String aaa = 'AAA';

  var _b;
  set bValue(String value) {
    _b = value;
  }
}

void main() {
  var p = People();
  p.pName = 'Mars'; //會進入set中設定
  print(p.pName); //my name is Mars
  print(p.aaa); //AAA //Dart會自動給一個default的set以及get
  p.bValue = '123';
  //print(p.bValue); //因為b是私有變數，這樣的話會因為沒有定義get函數，所以不能被調用
}
