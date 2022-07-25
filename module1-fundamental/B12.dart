class Inf1 {
  String show() {
    return 'I am from interface1';
  }
}

class Inf2 {
  String show() {
    return 'I am from interface2';
  }

  String show1() {
    return 'I am from interface2';
  }
}

class INF implements Inf1, Inf2 {
  @override
  String show() {
    return 'Use Of Interface';
  }

  @override
  String show1() {
    return '';
  }
}

void main() {
  INF i1 = new INF();
  print(i1.show());
}
