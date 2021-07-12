void main() {
  var p = AndroidPhone();
  p.startup(); //start up
  p.shutdown(); // shut down!

  var p2 = IOSPhone();
  p2.startup(); //開機Interface
  p2.shutdown(); //關機interface
  print(p2.signal); //4
}

abstract class IPhone {
  //會在名稱前面加一個I表示abstract
  void startup();
  void shutdown();
}

class AndroidPhone implements IPhone {
  @override
  void startup() {
    print('start up');
  }

  @override
  void shutdown() {
    print('shut down!');
  }
}

class Phone {
  void startup() {
    print('關機class');
  }

  void shutdown() {
    print('關機class');
  }
}

class Mobile {
  int signal = 3;
}

//也可以利用一般的class來implements interface
class IOSPhone implements Phone, Mobile {
  @override
  int signal = 4;
  @override
  void startup() {
    print('開機Interface');
  }

  @override
  void shutdown() {
    print('關機interface');
  }
}
