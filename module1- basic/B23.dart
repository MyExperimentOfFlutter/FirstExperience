void main() {
  BMW bmw = new BMW();
  bmw._price = 1100000;
  bmw.carModel = 'A115C83';
  print('BMW car price = ${bmw._price}');
  print('BMW car model = ${bmw.carModel}');
}

class Car {
  String carModel = '';
  static String companyName = '';
  final int _price = 0;

  static String carDriving() {
    return 'I am driving safari';
  }
}

class BMW implements Car {
  @override
  int _price = 900000;

  @override
  String carModel = 'A115';
}
/*
  As per shown above we can prevent overriding using static keyword

 */