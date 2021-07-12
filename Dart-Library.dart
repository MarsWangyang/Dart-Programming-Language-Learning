// import 'dart:io'; //導入core library

// void main() {
//   var file = File('README.md');
//   var content = file.readAsStringSync();
//   print(content);
// }

//---------------------------
//導入third party library
//會先建立一個pubspec.yaml
import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  Response<String> response = await dio.get('https://www.google.com');
  print(response.data);
}
