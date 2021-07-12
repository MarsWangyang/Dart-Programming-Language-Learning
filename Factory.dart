// void main() {
//   var iosPhone = phoneFactory('ios');
//   iosPhone.startup(); //IOS 開機
// }

// Phone phoneFactory(String phoneType) {
//   switch (phoneType) {
//     case 'android':
//       return AndroidPhone();
//     default:
//       return IOSPhone();
//   }
// }

// abstract class Phone {
//   void startup();
//   void shutdown();
// }

// class IOSPhone extends Phone {
//   @override
//   void startup() {
//     print('IOS 開機');
//   }

//   @override
//   void shutdown() {
//     print('IOS 關機');
//   }
// }

// class AndroidPhone extends Phone {
//   @override
//   void startup() {
//     print('Android 開機');
//   }

//   @override
//   void shutdown() {
//     print('Android 關機');
//   }
// }

//------------------------------------------
//另一種撰寫方式
//factory constructor: 如果一個constructor並不總是return a object，就可以使用factory constructor
//例如可以從cache中獲取一個instance並且return
//factory constructor無法訪問this

void main() {
  var androidPhone = Phone('android');
  androidPhone.startup();
  androidPhone.shutdown();
}

abstract class Phone {
  factory Phone(String phoneType) {
    switch (phoneType) {
      case 'android':
        return AndroidPhone();
      default:
        return IOSPhone();
    }
  }
  void startup();
  void shutdown();
}

class IOSPhone implements Phone {
  @override
  void startup() {
    print('IOS 開機');
  }

  void shutdown() {
    print('IOS 關機');
  }
}

class AndroidPhone implements Phone {
  @override
  void startup() {
    print('Android 開機');
  }

  @override
  void shutdown() {
    print('Android 關機');
  }
}
