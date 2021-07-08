void main() {
  num a = 123;
  //String b = a as String; //這裡會因為num的subtype並沒有String，因此會Error

  String str = 'MarsWang';
  print(str is String); //true
  print(str is! String); //false

  bool isFinished = true;
  String txtValue = isFinished == true
      ? 'yes'
      : 'no'; //確認前面是否正確，對的話就return expr1, else return expr2
  print(txtValue); // yes

  var isDone;
  isDone ??= 'hello'; // ??=：是給沒有被賦予defalut value的object設置默認值
  print(isDone); //hello

  StringBuffer sb = StringBuffer();
  sb.write('aaa');
  sb.write('bbb');
  sb.write('eee');
  //也可寫成這樣 => 為聯級operator
  sb
    ..write('aaaaaa')
    ..writeln('bbbbbb')
    ..write('cccccc');
  print(sb); //aaabbbeeeaaaaaabbbbbb
  //           cccccc

  var str1;
  //0print(str1.length); // -> Error
  print(str1?.length); // null => ?會先查看是否是null，如果是的話就return null
}
