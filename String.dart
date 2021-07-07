void main() {
  var digit1 = double.parse("2.14");
  print('Runtime type of digit1: ${digit1.runtimeType}'); // double

  var digit2 = int.parse("2");
  print('Runtime type of digit2: ${digit2.runtimeType}'); //int

  var str1Digit1 = digit1.toString();
  print('str1Digit1: ${str1Digit1.toString()}'); // String
  print('Runtime type of str1Digit1: ${str1Digit1.runtimeType}');


  var str2 = "abcdef";
  print('str2.substring(start, length): ${str2.substring(0,2)}'); // ab
  print('str2.substring(start_to_end): ${str2.substring(3)}'); // def

  var str3 = 'a,b,c,f,e,,';
  var listSplit = str3.split(',');
  print('sliced list: ${listSplit}'); //[a, b, c, f, e, , ]

  var str4 = 'abba';
  print('normalized match: ${str4.split(RegExp(r'b*'))}');//[a, a] //[a, , a]有*的話會把b所在的地方保留

  var str5 = ',af,b, c'; // =>被轉變成為(2) ,(1) (2) ,(1) (2)
  var str5_r = str5.splitMapJoin(',', //查詢","，然後用onMatch的返回值代替","，用onNonMatch的返回值替代其他
    onMatch: (Match match) {
      return '1';
    },
    onNonMatch: (String nonMatch) {
      return '2';
    }
  );
  print('Find&replace: ${str5_r}'); //212 ==> a b, c -> 212

  var str6 = 'aaabbbccc';
  print('startsWith(String): ${str6.startsWith('aa')}'); //true
  print('startsWith(String, start_index): ${str5.startsWith("aa", 3)}'); //false
  print('endsWith(String): ${str6.endsWith('c')}'); //true
  print('contains(String): ${str6.contains('ab')}'); //true
  print('contains(String): ${str6.contains('ac')}'); //false
  print('contains(String, start_index): ${str6.contains('ab', 3)}'); //false

  var str7 = "abcdeab";
  print('Replace all: ${str7.replaceAll('ab', 'cc')}'); //cccdecc =>全部都會換
  print('Replace First: ${str7.replaceFirst('ab', 'k')}'); //kcdeab
  print('Replace First from specific index: ${str7.replaceFirst('ab', 'k', 3)}'); //abcdek
  print('Replace Range(start_index, end_index): ${str7.replaceRange(1, 3, 'z')}'); //azdeab : bc -> z
  print('Replace All Mapped: ${str7.replaceAllMapped("a", (match) => 'yy')}'); //yybcdeyyb
  print('Replace First Mapped: ${str7.replaceFirstMapped('b', (match) => 'oo', 2)}'); //abcdeaoo //from index=2

  var str8 = 'Dartisans';
  print(str8.indexOf('art'));  //1
  print(str8.indexOf(RegExp(r'[A-Z][a-z]')));  //0
  print(str8.lastIndexOf('a'));  //6
  print(str8.lastIndexOf(RegExp(r'a(r|n)'))); //6

  var str10 = '  aaa  bbb  ccc  ';
  print('remove all space: ${str10.trim()}'); //aaa  bbb  ccc
  print('remove right space: ${str10.trimRight()}'); //   aaa  bbb  ccc
  print('remove middle space: ${str10.trim().split(RegExp('\\s+'))}'); //[aaa, bbb, ccc] =>用此種方式不管中間空多少，都可以切掉(good)
  print('remove middle space: ${str10.trim().split(' ')}'); //[aaa, , bbb, , ccc] => 因為我們中間空2次空白(bad)

  var str11 = 'asd';
  print('Upper case: ${str11.toUpperCase()}');  //ASD
  print('Lower case: ${str11.toLowerCase()}');  //asd

  //字符創的創建 => StringBuffer是拿來拼接字符串用的, 也就是定義後可以再改變
  var str12 = StringBuffer();
  str12..write('aaa')
       ..write('bbb')
       ..write('ccc')
       ..writeAll(['qqq', 'ddd']);
  print('String Buffer: ${str12}'); // aaabbbcccqqqddd
  print('String Buffer is Empty: ${str12.isEmpty}');  // false
  print('String Buffer length: ${str12.length}'); // 15
  print('String Buffer To String: ${str12.toString()}'); // aaabbbcccqqqddd

  var str13 = '111';
  print(str13.padLeft(6));  //   111，剩餘三個位，默認使用""補齊
  print(str13.padRight(6, 'c')); //111ccc 剩餘三個位 使定使用"c"
  print(str13.padLeft(6, 'dd')); //dddddd111
  print(str13.padLeft(2, 'e')); //111

  var str14 = 'bbcc';
  print(str14.compareTo('aaa')); // 1 => acsii code中 b > a
  print(str14.compareTo('bbcc')); // 0
  print(str14.compareTo('pp')); // -1

  var str15 = 'abc';
  var str16 = 'def';
  print(str15 + str16);  // abcdef






}