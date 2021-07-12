void main() {
  var iphone = Iphone6s();
  iphone.call(); // IOS is calling...
  iphone.text(); // IMesaage texting -> 加入class Line後：Line texting
}

class Phone {
  void startup() {
    print('開機');
  }

  void shutdown() {
    print('關機');
  }
}

class IOSPhone extends Phone {}

//mixin也可以用class
//但是class可以被創建instance, mixin無法
//如果想要讓mixin在特別的某個class身上，就用mixin on
mixin IOSSystem on IOSPhone {
  void call() {
    print('IOS is calling...');
  }
}

mixin IMessage on IOSPhone {
  void text() {
    print('IMesaage texting');
  }
}

mixin Line {
  void text() {
    print('Line texting');
  }
}

//Mixin在這 -> 會用with來多加入他會有的功能
//當mixin的funtion有同樣功能的時候，會拿最後一個進來的class之功能做使用
class Iphone6s extends IOSPhone with IOSSystem, IMessage, Line {}
