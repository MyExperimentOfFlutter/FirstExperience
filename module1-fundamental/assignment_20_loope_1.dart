import 'dart:io';

List<int> fibList = [];
//fibonacci series
int a = 0, b = 1;
void fib(int n) {
  for (int i = 1; i <= n; i++) {
    int next = 1;
    next = a + b;
    a = b;
    b = next;

    fibList.add(next);
    //print('$next');
  }
  for (var item in fibList) {
    print(item);
  }
  fibList.toList();
  print(fibList.toString());
}

void main() {
  print('Enter Integer Number');
  var n = int.parse(stdin.readLineSync()!);
  fib(n);
}
