// @deprecated => 不被建議的方法，未來會被刪除掉的

class Television {
  @deprecated
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('on!');
  }
}

void main() {
  var t = Television();
  t.activate(); //這邊會被斜線說已經不被建議實現
  t.turnOn();
}
