import 'dart:core';
import 'dart:mirrors';

enum Status { none, running, stopped, paused, what }
void main() {
  //Symbol標示符號
  var libName = Symbol('dart.core');
  var mirSystem = currentMirrorSystem();
  var libMirror = mirSystem.findLibrary(libName);
  print(libName); //Symbol("dart.core")
  libMirror.declarations.forEach((s, d) => print('$s - $d'));

  //Enum
  var enum1 = Status.running;
  if (enum1 == Status.running) {
    print('running'); //running
  }
}
