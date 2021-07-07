void main() {
  //-----definition-----
  var map1 = Map();
  map1['name'] = 'Mars';
  map1['web'] = 'mars.website';
  print(map1); //{name: Mars, web: mars.website}

  var map2 = {'name': 'Mars', 'web': 'mars.website'};
  print(map2); //{name: Mars, web: mars.website}

  //-----Attribute-----
  print(map2.isEmpty); //false
  print(map2.isNotEmpty); //true
  print(map2.length); //2
  print(map2.keys); //(name, web)
  print(map2.values); //(Mars, mars.website)

  //-----methods-----
  var map3 = Map();
  map3.addAll({'first': 'java', 'second': 'php'}); //裡面可以放key value的值
  print(map3); //{first: java, second: php}
  //---查詢---
  print(map3.containsKey('first')); //true
  print(map3.containsValue('php')); //true
  //---clear---
  map3.clear();
  print(map3); // {}
  //---delete---
  var map4 = Map();
  map4.addAll({'first': 'python3', 'second': 'php', 'third': 'java'});
  print(map4); // {first: python3, second: php, third: java}
  map4.remove('first'); //裡面輸入keys
  print(map4); //{second: php, third: java}
  map4.removeWhere((key, val) => key == 'second'); //裡面輸入匿名function
  print(map4); //{third: java}
  //---update---
  map4.update('third', (val) => 'bbb'); //第一個放keys, 第二個放匿名函數，並且只能對已有的值更新
  print(map4); //{third: bbb}
  var map5 = {'first': 'python', 'second': 'php'};
  map5.updateAll((key, value) => '----$value-----');
  print(map5); //{first: ----python-----, second: ----php-----}
}
