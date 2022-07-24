import 'dart:io';

class PrintIC {
  void method1(int i, String s) {
    print('Integer number = $i');
    print('Character String = $s');
  }

  void method2(String s, int i) {
    print('Character String = $s');
    print('Integer value = $i');
  }
}

void main() {
  PrintIC pic = new PrintIC();
  print('enter integer value');
  var i = int.parse(stdin.readLineSync()!);

  print('enter character value');
  var c = stdin.readLineSync()!;

  pic.method1(i, c);
  print('');
  pic.method2(c, i);
}
