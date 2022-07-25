import 'dart:io';
//fibonacci series

int fib(int n) {
  if (n < 2) {
    return n;
  }
  return fib(n - 1) + fib(n - 2);
}

void main() {
  print('Enter Integer Number');
  var n = int.parse(stdin.readLineSync()!);

  var fibSeries = fib(n);
  print(fibSeries);
}
