void main() {
  var letter = ['a', 'b', 'c', 'd'];
  letter.forEach((e) => print(e));
  print('-'*20);
  for (String i in letter) {
    print(i);
  }
}