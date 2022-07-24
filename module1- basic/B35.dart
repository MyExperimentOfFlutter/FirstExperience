class PrintValues {
  List<int> listInt = [1, 2, 3];
  List<String> listString = ['A', 'B', 'C', 'D', 'E'];
  List<double> listDouble = [1.1, 2.1, 3.1, 4.1, 5.1];
  List<bool> listBoolean = [false, true, false, true];
  Map<String, int> mapSI = {'A': 1, 'B': 2, 'C': 3, 'D': 4, 'E': 5};
}

void main() {
  PrintValues pv = new PrintValues();
  print('---String value print using iterator---');
  pv.listString.forEach((element) {
    print(element);
  });

  print('---Integer value print using iterator---');
  pv.listInt.forEach((element) {
    print(element);
  });

  print('---bool value print using iterator---');
  pv.listBoolean.forEach((element) {
    print(element);
  });

  print('---double value print using iterator---');
  pv.listDouble.forEach((element) {
    print(element);
  });

  print('---printing of map value using iterator');
  print('keys which are String');
  print(pv.mapSI.keys);
  print('*****');
  print('values of map which are integer in this case');
  print(pv.mapSI.values);
}
