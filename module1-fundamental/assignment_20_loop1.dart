//write 1 to 10 using for loop
void main() {
  List l1 = [];
  print('1 to 10 using for loop');
  for (int i = 1; i <= 10; i++) {
    print(i);
    l1.add(i);
  }
  print(l1);
}
