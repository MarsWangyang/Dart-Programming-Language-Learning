// void main() {
//   var p = AndroidPhone();
//   p.shutdown();
//   p.startup();
// }

// class Phone {
//   void startup() {
//     print('開機');
//   }

//   void shutdown() {
//     print('關機');
//   }
// }

// //利用extends abstract來做
// abstract class Phone {
//   void startup();
//   void shutdown();
// }

// //super class調用
// class Phone {
//   void startup() {
//     print('開機');
//   }

//   void shutdown() {
//     print('關機');
//   }
// }

// class AndroidPhone extends Phone {
//   void startup() {
//     super.startup();
//     print('Android Phone開機');
//   }
// }
// // 關機
// // 開機
// // Android Phone開機

//---------------------

void main() {
  var p = AndroidPhone('123456789');
  p.startup();
  p.shutdown();
  print(p.phoneNum);

  dynamic p1 = AndroidPhone('6699512');
  p1.startuoNosuchMethod(); //noSuchMethod會自動被調用出來
}

class Phone {
  var phoneNum;

  Phone(this.phoneNum);

  void startup() {
    print('開機');
  }

  void shutdown() {
    print('關機');
  }
}

//調用parent class的constructor
class AndroidPhone extends Phone {
  AndroidPhone(String num) : super(num);
  @override
  void startup() {
    print('安卓開機');
    print(phoneNum);
  }

  @override
  void shutdown() {
    print('安卓關機');
  }

  //這個function是原生在每個class之中的，當調用class中沒有此method
  //則就會回傳此funtion出去
  //但是調用的方式並需要用dynamic的方式調用
  //因為dynamic是在compile時才會去檢查有沒有問題
  @override
  void noSuchMethod(Invocation mirror) {
    print('被重寫了 noSuchMethod');
  }
}
