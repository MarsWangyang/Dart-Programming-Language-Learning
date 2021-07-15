import 'dart:async';
import 'dart:isolate';

//threads之間的安全傳送
// 1. 定義main thread
void main() async {
  // 3. 回調port
  var receivePort = ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort); //去調用echo thread

  // 6. 保存echo thread回調port
  var sendPort = await receivePort.first;

  // 7. 對echo發消息
  var msg = await sendReceive(sendPort, "aaa");
  print('receive: $msg');
  msg = await sendReceive(sendPort, 'close');
  print('receive: $msg');
}

// 2. echo thread
echo(SendPort sendPort) async {
  //4. 編寫回調port
  var port = ReceivePort();

  //5. 告訴main thread入口port
  sendPort.send(port.sendPort); //去調用回去main thread

  //8. 循環接收message
  await for (var msg in port) {
    var data = msg[0];
    SendPort replyto = msg[1]; //記住port的位置
    replyto.send(data); //回傳給第14, 15行
    if (data == 'close') {
      print('echo is closing');
      port.close();
    }
  }
}

//發消息的function
// data[0] 是 msg的字符串
// data[1] 是 發送方的入口
Future sendReceive(SendPort port, msg) {
  ReceivePort response = ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}
