void main() {
  //-----Defition-----
  var s1 = Set();
  s1.add('a');
  s1.add('b');
  s1.add(1);
  s1.add('a');
  print(s1); //{a, b, 1}

  //-----Attribute-----
  print(s1.isEmpty); //false
  print(s1.isNotEmpty); //true
  print(s1.first); //a
  print(s1.last); //1
  print(s1.length); //3

  //-----Method-----
  //---Addition---
  s1.addAll(['python', 'dart', 'python', 'C#']);
  print(s1); // {a, b, 1, python, dart, C#}
  //---Search---
  print(s1.contains('dart')); //true
  print(s1.contains('c++')); // false
  print(s1.containsAll(
      ['dart', 'java'])); //要所有contain list中的元素都有才會return true // false
  //---different set---
  print(s1.difference({
    'switch',
    'dart'
  })); //比較a與b有不同的，則return a中不同的elements //{a, b, 1, python, C#}
  //---Intersection---
  print(s1.intersection({'java', 'python', 'a', 'dart'})); //{a, python, dart}
  //--Union---
  print(s1.union(
      {'java', 'python', 'a', 'dart'})); //{a, b, 1, python, dart, C#, java}
  //---Delete---
  s1.remove('java');
  //---Clear---
  s1.clear();
  print(s1); // {}

  //---正向Search & 反向Search---
  var s2 = Set();
  s2.addAll(['a', 'b', 'c', 'd', 'e', 'd']);
  print(s2.firstWhere((ele) => ele == 'd')); //d
  print(s2.lastWhere((ele) => ele == 'a')); //a

  //---only Retain a part of elements---
  s2.retainAll(['a', 'b']);
  print(s2); //{a, b} -> 只保留了a, b
}
