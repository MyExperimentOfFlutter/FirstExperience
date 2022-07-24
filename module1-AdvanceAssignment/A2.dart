class A {
  static Print() {
    print('Parent');
  }
}

class B extends A {
  static Print() {
    print('Child');
  }
}

void main() {
  A obj = new B();
  A.Print();

  B obj1 = new B();
  B.Print();
}
