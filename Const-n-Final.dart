void main() {

  final dt = DateTime.now();  // 回傳現在時間
//const dt2 = DateTime.now(); // => Error

  final List ls0 = [11,22,33];
  const List lsC = [11,22,33];
  ls0[1] = 00;
  //ls2[1] = 45; // => Error


  final ls1 = [11,22,33];
  final ls2 = [11,22,33];
  const ls3 = [11,22,33];
  const ls4 = [11,22,33];
  print(identical(ls1, ls2)); // false -> 會有不同的reference
  print(identical(ls3, ls4)); // true -> 會是同個address去存取
}