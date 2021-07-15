void main() {
  var phone = IOSPhone();
  phone('999'); //phone number is 999
}

class IOSPhone {
  call(String num) {
    print('phone number is $num'); //讓object能夠跟function一樣能夠呼叫
  }
}
