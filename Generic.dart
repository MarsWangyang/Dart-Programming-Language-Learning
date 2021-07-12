//在查看documentation可以看到會寫：List E => 就是指說List是一個Generic

void main() {
  //Generic 使用 <Generic>
  var l = <String>[];
  l.add('aba');
  //l.add(123); -> 這樣就會Error
  print(l); // [aba]

  var m = Map<int, String>();
  m[1] = 'aaa';
  m[2] = 'bbb';
  //m[3] = 123; ->這樣會Error
  print(m); //{1: aaa, 2: bbb}

  var key = addCache('1', 'WTF'); //1, WTF
  print(key); // 1

  var key2 = addCache<String, int>('1', 123); //1, 123
  print(key2); // 1

  var p = Phone('090000000');
  print(p.mobileNumber); //090000000

  var p2 = Phone<int>(91123);
  print(p2.mobileNumber); // 91123

  var ad = AndroidPhone();
  var pAD = PhoneAD<AndroidPhone>(ad);
  pAD.mobile.startup(); //android 開機

  // var ios = IOSPhone();
  // var pios2 = PhoneAD<IOSPhone>(ios); //這裡不管怎樣因為傳入的參數都不是AndroidPhone，所以都Error
}

//Generic Function
//function return value: k
k addCache<k, v>(k key, v val) {
  print('${key}, ${val}');
  return key;
}

//Generic Constructor
class Phone<T> {
  final T mobileNumber;
  Phone(this.mobileNumber);
}

//Generic Limitation
class AndroidPhone {
  void startup() {
    print('android 開機');
  }
}

class IOSPhone {
  void startup() {
    print('IOS 開機');
  }
}

//這樣的意義就是：Generic類型只能是AndroidPhone
class PhoneAD<E extends AndroidPhone> {
  final E mobile;
  PhoneAD(this.mobile);
}
