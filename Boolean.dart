void main() {
  //---------definition---------
  bool a = true;

  //---------Expression---------
  String stra = 'aaa';
  //if (a) {} => Error

  //---------Assert---------
  String strA = 'aaa';
  //assert(strA == 'aaa123'); // 拋出Error

  // logical operator
  bool a1 = true;
  bool b1 = false;
  //assert(a1 && b1); //false => throw Error
  print(!a1); // false
}