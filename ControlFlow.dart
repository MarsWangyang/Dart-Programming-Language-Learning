void main() {
  //-----if------
  var isPrint = true;
  if (isPrint) {
    print('abc');
  } else {
    print('no');
  }

  //-----For-----
  var count = 10;
  for (var i = 0; i < count; i++) {
    print(i);
  }

  //-----Whilie-----
  var isDone = false;
  while (!isDone) {
    print('Not Done');
    isDone = true;
  }

  //-----do while-----
  var isRunning = true;
  do {
    print('Mars is Running');
    isRunning = false;
    print('not Running');
  } while (isRunning);

  //-----Switch-----
  var name = 'Mars';
  switch (name) {
    case 'Mars':
      print('Mars');
      break;
    case 'Amy':
      print('Amy');
      break;
    default:
      print('no name is found');
  }

  //-----Break & Continue-----
  for (var i = 0; i < count; i++) {
    if (i > 10) {
      break; //會跳出整個loop
    }
    if (i <= 4) {
      continue; //會不管現在的loop，跳到下一次loop中繼續執行
    }
    print(i); // 5 6 7 8 9
  }

  //-----Continue Label Operator-----
  var name1 = 'Mars';
  switch (name) {
    case 'Mars':
      print('Mars'); // Mars
      continue doAmy; //會把continue指定到每個位置去
    case 'doAmy':
      print('Amy with Mars');
      break;

    doAmy:
    case 'Amy':
      print('Amy'); //Amy
      break;
    default:
      print('no name here');
  }
}
