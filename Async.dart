import 'package:dio/dio.dart';

void main() async {
  //Async的調用 => 用then
  //1. 獲取用戶資料 -> 2. 獲取用戶訂單(根據User id)
  //會發現邏輯非常複雜並且難以閱讀
  // var dio = Dio();
  // dio.get('https://www.google.com').then((response) {
  //   print(response.data);
  //   var uid = response.data('uid');
  //   dio.get('https://www.google.com?uid=${uid}').then((response) {
  //     print(response.data);
  //   });
  // });

  //Asynchronous await -> 會依照等待的順序所執行
  // var dio = Dio();
  // print('------1------');
  // Response<String> response = await dio.get('https://www.google.com');
  // var uid = response.data["uid"];

  // print('------2------');
  // response = await dio.get('https://www.google.com?uid=${uid}');
  // var orderID = response.data["orderID"];

  // print('------3------');
  // await dio.get('https://www.google.com?orderID=${orderID}');

  // print(response.data);

  //Async function, and return assigned type
  var content = await getUrl('https://www.google.com');
  print(content);
}

Future<String?> getUrl(String url) async {
  var dio = Dio();
  Response<String> response = await dio.get(url);
  return response.data;
}
