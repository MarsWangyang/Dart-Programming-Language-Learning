void main() {
  var icon1 = '🥰';
  print(icon1.length); // 2 -> Unicode16的字符長度
  print(icon1.runes.length); // 1 -> 表示一個32位元的Unicode字符串

  var icon2 = Runes('\u{1f596} \u6211'); //4位的話不用括號
  print(icon2); //🖖
  var icon3 = String.fromCharCodes(icon2);
  print(icon3); ////我

  var icon4 = '🙏';
  print(icon4); //🙏
  print(icon4.codeUnits); //return 16-bits顯示 , // [55357, 56911]
  print(icon4.codeUnitAt(0)); //55357
  print(icon4.runes); //直接print出32-bits進制的值 //(128591)
}
