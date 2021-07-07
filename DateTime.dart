void main() {
  //----------Definition---------
  var d0 = DateTime(2021, 6, 30);
  print(d0); //2021-06-30 00:00:00.000

  var d1 = DateTime.now();
  print(d1); //2021-06-30 11:38:26.121674

  //---------UTC---------
  var d2 = DateTime.utc(2021, 6, 30);
  print(d2); //2021-06-30 00:00:00.000Z (Z: Zone)

  //---------IOS 8601---------
  var d3 = DateTime.parse('2021-06-30 09:30:30+0800');
  var d4 = DateTime.parse('2021-06-30 09:30:30+0900');
  print(d3); //2021-06-30 01:30:30.000Z
  print(d4); //2021-06-30 00:30:30.000Z

  // 時間增加減少
  var d5 = DateTime.now();
  print(d5); // 2021-06-30 11:44:36.099650
  print(d5.add(Duration(minutes: -3))); // 2021-06-30 11:41:36.099650
  print(d5.add(Duration(minutes: 5))); // 2021-06-30 11:49:36.099650

  // 時間比較
  var d6 = DateTime(2021, 06, 30);
  var d7 = DateTime(2021, 06, 29);
  print(d6.isAfter(d7)); //true
  print(d6.isBefore(d7)); //false
  print(d6.isAtSameMomentAs(d7)); //false

  // 時間差
  var d8 = DateTime(2021, 06, 30);
  var d9 = DateTime(2021, 06, 29);
  var diff = d8.difference(d9);
  print([diff.inDays, diff.inHours]); // [1, 24]

  // 時間刻度精度差異
  var now = DateTime.now();
  print(now.millisecondsSinceEpoch); //自公元年以來的時間刻度 // 1625025714075
  print(now.microsecondsSinceEpoch); //自公元年以來的時間刻度 // 1625025714075428

}