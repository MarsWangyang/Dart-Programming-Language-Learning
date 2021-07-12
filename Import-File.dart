//此dart file是Dart-Core-Library.dart中的導入文件示範
//此example會import Factory.dart使用
// import './Factory.dart' as phone;
// //如果import的file中會有class name overlap，則用as來取代名稱

// void main() {
//   var testADPhone = phone.Phone('android');
//   testADPhone.shutdown();

//   var testIOSPhone = phone.Phone('ios');
//   testIOSPhone.shutdown();
// }

//如果只想import file中的某個class -> show
//如果只想隱藏某個file中的class -> hide
// import './Factory.dart' as pp show IOSPhone;

// void main() {
//   var iosPhone = pp.IOSPhone();
//   iosPhone.startup();
// }

//延遲deferred載入
//也就是說不會在compile時load into
//而是在code運行的時候才載入library -> 好處：交互性很強的介面，因為可以在需要的時候才導入
//不會一開始遊戲打開就全部load進去code當中 => 會超lag
import './Factory.dart' deferred as pp;

void main() async {
  var run = true;
  if (run) {
    await pp.loadLibrary();
    var p = pp.Phone('android');
    p.startup();
  }
}
