class Point {
  late num x; //如果沒有late，則會被判定成null，所以我這邊給late，promise說我們這個variable未來會有值進入
  num? y;
  var origin;
  // Point(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  // }
  //上面的Contructor可以改寫成這樣
  Point(this.x, this.y)
      : origin = {'p1': x, 'p2': y}; //origin這裡為initializer list
  // //initializer list就是說，當在做Contructor時，能同時對我們物件裡面其他variables做初始化

  //-----named Constructor----- 類似給Constructor去做變異，讓使用者可以依照不同情境去建構Constructor
  Point.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
    print('fromJson');
  }

  Point.fromXML(Map xml) {
    x = xml['x'];
    y = xml['y'];
    print('fromXML');
  }

  //-----Redirector Constructor----- 也就是說如果使用者create了這個constructor，就會轉到其他的constructor中去做
  Point.fromIDK(Map idk)
      : this(idk['x'], idk['y']); //利用initilizer list去轉constructor
}

void main() {
  var p1 = Point(10, 22); //create a instance
  print([p1.x, p1.y, p1.origin]); //[10, 22, {p1: 10, p2: 22}]

  var p2 = Point.fromJson({"x": 33, "y": 44}); // fromJSon
  print([p2.x, p2.y]); //[33, 44]

  var p3 = Point.fromXML({"x": 10, "y": 5}); // fromXML
  print([p3.x, p3.y]); //[10, 5]

  var p4 = Point.fromIDK({"x": 1, "y": 69});
  print([p4.x, p4.y]); //[1, 69]
}
