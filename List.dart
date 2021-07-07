void main() {
  // ------------Definition---------
  var l = [1, 2, 3];
  l.add(4); // l = [1,2,3,4]
  //l.add('q'); // => Error(List<int>)

  //固定長度
  var l2 = List<int>.filled(5, 0); // l2 = [0,0,0,0,0]
  //l2.add(499); // => Error
  l2[0] = 2;
  print(l2); //[2, 0, 0, 0, 0]

  //-----Attribute-----
  var l3 = [1, 2, 3];
  print(l3.first); //1
  print(l3.last); //3
  print(l3.length); //3
  print(l3.isEmpty); //false
  print(l3.isNotEmpty); //true
  print(l3.reversed); //(3,2,1)

  //-----Methods-----
  var l4 = <Object>[];
  //---Add---
  l4.add('aa');
  l4.addAll(['bb', 'cc', 'dd']);
  print(l4); //[aa, bb, cc, dd]
  l4.insert(1, 'ff');
  print(l4); //[aa, ff, bb, cc, dd]
  l4.insertAll(1, ['ee', 'gg']);
  print(l4); //[aa, ee, gg, ff, bb, cc, dd]
  //---Search---
  print(l4.indexOf('gg')); //裡面輸入index的名稱，return index location //2
  //---Remove---
  l4.remove('ff');
  print(l4); //[aa, ee, gg, bb, cc, dd]
  l4.removeAt(1); //依照index位置刪除
  print(l4); //[aa, gg, bb, cc, dd]
  //---Sorting---
  l4.sort();
  print(l4); //[aa, bb, cc, dd, gg]
  //---Operator---
  l4[0] = 'aaa';
  l4 = l4 + [1, 2, 3];
  print(l4); //[aaa, bb, cc, dd, gg, 1, 2, 3]
}
