class Parent {
  static String name = 'AAAAA';
  int age = 38;
  dispData() {
    print('name = AAA & age = 28');
  }
}

class Child extends Parent {
  String name = 'TTT';
  //int age = 30;

/*
  @override
  dispData() {
    print('name = SSS & age = 10');
  }
  */
}

void main() {
  var c = Child();
  c.dispData();
  print(c.name);
  print(c.age);
}
