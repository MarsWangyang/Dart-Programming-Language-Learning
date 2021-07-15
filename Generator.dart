// void main() {
//   var l = <String>[];
//   l.addAll(['aaa', 'bbb', 'ccc']);
//   var it = l.iterator;
//   while (it.moveNext()) {
//     //iterator會用moveNext往下一個index前進
//     print(it.current);
//   }
// }
//以上為iterator的概念

//---------------------------
// void main() {
//   var it = naturalsTo(5).iterator;
//   while (it.moveNext()) {   //step1
//     print(it.current);      //step3
//   }
// }

// //同步生成器
// Iterable<int> naturalsTo(int n) sync* {
//   print('---start---');
//   int k = 0;
//   while (k < n) {
//     yield k++;              //step2 => yield會等待moveNext的指令
//   }
//   print('---end---');
// }
//以上的code會是依照steps來有順序的進入iterable function當中loop

//------------------------------

// import 'dart:async';

// //Async Iterator 返回值會是Stram => 適合用在flow上
// Stream<int> asynchronousNaturalsTo(int n) async* {
//   print('---start---');
//   int k = 0;
//   while (k < n) {
//     yield k++;
//   }
//   print('---end---');
// }

// void main() {
//   asynchronousNaturalsTo(5).listen((onData) {
//     print(onData);
//   });

//   //適合用在控制flow上
//   //對象進行flow監聽控制
//   StreamSubscription subscription = asynchronousNaturalsTo(10).listen(null);
//   subscription.onData((data) {
//     print(data);
//     subscription.pause();
//   });
// }

//------------------------------------

//Recursive generator
Iterable<int> naturalsDownForm(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownForm(n - 1); //*代表pointer -> 是為了避免生成出新的值
    //yield*也會是以pointer方式傳遞recursive對象，而不是整個同步對象
  }
}

void main() {
  var it = naturalsDownForm(5).iterator;
  while (it.moveNext()) {
    //moveNext就會指向到naturalsDownForm上去
    print(it.current);
  }
}
