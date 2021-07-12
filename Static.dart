void main() {
  //Static variable可以不用創建instance就被調用
  print(People.name); // Mars

  var p = People();
  p.show(); //Mars show!

  //如果class內的method設定成為Static
  People.showStatic(); //Mars static show! //直接調用，不用創建instance
}

class People {
  static var name = 'Mars';

  void show() {
    print('$name show!'); //不會是this.name -> 因為這樣就會變成是屬於創造的instance的 -> 因此會Error
    // 但是static的變數是global的，也就是說是屬於整個People這個class的
  }

  static void showStatic() {
    print('$name static show!');
  }
}
