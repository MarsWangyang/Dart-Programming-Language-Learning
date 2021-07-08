int add([var x]) {
  return x + 1;
}

int addA([var x]) {
  if (x == null) {
    throw 'X不能為null';
    throw NullThrownError();
  }
  return x + 1;
}

void main() {
  //add(); //這樣一定會Error
  //addA();

  //-----Throw Error-----
  //throw FormatException();
  //throw OutOfMemoryError();

  //-----Catch Error-----
  try {
    throw OutOfMemoryError();
  } on OutOfMemoryError {
    //針對OutOfMemoryError去做處理
    print('We are out of memory'); //We are out of memory
    //rethrow; //會重新丟回去OutOfMemory，並且顯示出哪一行有問題
  } catch (e) {
    //如果不是OutOfMemoryError的話則會回到這裡拋出
    print(e);
  } finally {
    //這裡常常會做Objects的清理，會等前面的Error都處理完成以後，到這裡做動作
    print('end');
  }
}
