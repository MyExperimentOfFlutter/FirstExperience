class PClass {
  void methodPrint1() {
    print('This is parent class');
  }
}

class CClass extends PClass {
  void methodPrint2() {
    print('This is child class');
  }
}

void main() {
  PClass parent = new PClass();
  CClass child = new CClass();

  parent.methodPrint1();
  child.methodPrint2();
  print('******calling method from child class******');
  child.methodPrint1();
}
