import 'dart:io';
//menu driven program that demonstrate addition/multiplication/division
//and substraction using switch()

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int div(int a, int b) {
  return (a / b).toInt();
}

int mult(int a, int b) {
  return a * b;
}

void main() {
  bool cExit = false;
  var ip = 0;
  var ip1 = '';
  do {
    print('enter first number');
    var n1 = int.parse(stdin.readLineSync()!);

    print('enter second number');
    var n2 = int.parse(stdin.readLineSync()!);

    print('press EXIT/exit for exit');
    print('press - A for Addition');
    print('press - B for Substraction');
    print('press - C for Multiplication');
    print('press - D for Division');
    print('enter input between A to D');
    ip1 = stdin.readLineSync()!;

    switch (ip1) {
      case 'A':
        print(add(n1, n2));
        break;

      case 'B':
        print(sub(n1, n2));
        break;

      case 'C':
        print(mult(n1, n2));
        break;

      case 'D':
        print(div(n1, n2));
        break;
    }
  } while (!(ip1.contains('EXIT') || ip1.contains('exit')));
}
