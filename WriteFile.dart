import 'dart:io';

void writeFileAsync()  {
  final filename = './bin/wr.txt';
  for (int i=0; i <= 2; i++) {
    var file = File(filename).writeAsStringSync(
        'sex on the beach asynchronous', mode: FileMode.append);
  }//會追加上去

}

void writeFileStream() {
  var file = File('./bin/wr.txt');
  var sink = file.openWrite(); //->return IOSink
  sink.write('sex on the beach Stream with sink123');
  sink.close();
}

void addString() {
  var msg = StringBuffer('Dart is fun');
  for (int i=0; i < 5; i++) {
    msg.write(i);
  }
  print(msg);
}

void main() {
  //writeFileAsync();
  //writeFileStream();
  addString();
}