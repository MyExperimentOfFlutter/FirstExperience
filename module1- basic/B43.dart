abstract class Parent {
  void Message();
}

class First extends Parent {
  @override
  void Message() {
    print('This is first subclass');
  }
}

class Second extends Parent {
  @override
  void Message() {
    print('This is second subclass');
  }
}

void main() {
  var f = First();
  var s = Second();
  f.Message();
  s.Message();
}
