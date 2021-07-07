import 'dart:convert';
import 'dart:io';
import 'dart:async';

void readFileAsync() {
  File file = File('./bin/d3.json');
  Future<String> futureContent = file.readAsString();  // => Future<String>
  futureContent.then((c) => print(c));
}

void readFileAsyncOneLine() {
  File('./bin/d3.json').readAsString().then((c) => print(c));
}


//In case you really want to proceed next procedure only when file content is read completely, reading file synchronously is required.
void readFileSync() {
  var file = File('./bin/d3.json');
  var jsonStr = file.readAsStringSync();  // =>String
  var jsonFile = jsonDecode(jsonStr);
  print('jsonStr: ${jsonFile}');
}

void readFileStream() async{
  final file = File('./bin/d2.json');
  var lines = file.openRead()
    .transform(utf8.decoder)
    .transform(LineSplitter());
  try {
    await for (var line in lines) {
      print('$line: ${line.length} characters');
    }
    print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  //readFileAsync();
  //readFileAsyncOneLine();
  //readFileSync();
  readFileStream();
}