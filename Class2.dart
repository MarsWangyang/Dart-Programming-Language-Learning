class Point {
  final num x;
  final num y;
  var origin;

  Point(this.x, this.y) : origin = {'1': x, '2': y};

  Point.fromJson(Map json) : this(json['x'], json['y']);

  Point.fromXML(Map xml) : this(xml['x'], xml['y']);
}

void main() {
  var p = Point.fromJson({"x": 23, "y": 50});
  print([p.x, p.y, p.origin]);
}
