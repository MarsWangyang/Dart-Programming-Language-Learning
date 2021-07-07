void main() {
  //---------definition---------
  int a = 123;
  //a = 123.12; => Error
  double b = 123.123;
  // b = 123; => Error
  num c = 1; // => num是genre 可以在 int 和 double之間更換
  c = 1.2;

  //Decimal轉換
  int aa = 123;
  int bb = 0xfff; //4095

  //科學記號
  double cc = 21.2e3; //21200.0

  // 字串 <-> 數值
  int aaa = int.parse('123');
  double bbb = double.parse('123.123');
  num ccc = num.parse('123.123');
  String stra = 123.toString();

  //位運算 => 2進制、十進制、十六進制
  // & (And operator), | (Or operator), ~(non operator), ^(XOR operator)
  //會轉成2進位，然後去做位元的logical運算
  int a1 = 10;
  int b1 = 2;
  print(a1 & b1); // 2
  print(a1 | b1); // 10
  print(~a1); // -11
  print(a1 ^ b1); // 8

  //<<, >>位移
  print(1 << 1); //2 // 向左移動1位
  print(1 << 3); //8 // 向左移動3位
  print(8 >> 2); //2 // 向右移動2位

}