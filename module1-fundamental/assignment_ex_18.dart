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
  do {
    print('enter first number');
    var n1 = int.parse(stdin.readLineSync()!);

    print('enter second number');
    var n2 = int.parse(stdin.readLineSync()!);
    print('press 5 for exit');
    print('press - 1 for Addition');
    print('press - 2 for Substraction');
    print('press - 3 for Multiplication');
    print('press - 4 for Division');
    print('enter input between 1 to 4');
    ip = int.parse(stdin.readLineSync()!);

    switch (ip) {
      case 1:
        print(add(n1, n2));
        break;

      case 2:
        print(sub(n1, n2));
        break;

      case 3:
        print(mult(n1, n2));
        break;

      case 4:
        print(div(n1, n2));
        break;
    }
  } while (ip != 5);
}
