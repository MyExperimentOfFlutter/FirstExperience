void main() {
  print('Initialising set');
  var names = <String>{'A', 'B', 'C', 'D', 'E'};
  print(names);

  names.add('F');
  print(names);
  var names1 = <String>{'G', 'H', 'I'};
  names.addAll(names1);
  print(names);

  var x = names.elementAt(0);
  print(x);

  if (names.contains('B')) {
    print('element found');
  }

  names.remove('A');
  print('after removing of A = $names');

  print('printing of element = ');
  names.forEach((element) {
    print(element);
  });

  var X = <int>{1, 2, 3, 4, 5};
  var Y = <int>{6, 7, 8, 9, 0, 5};
  var Z = <int>{11, 12, 13, 14, 15};

  print('union of X AND Y = ${X.union(Y)}');
  print('intersection of X AND Y = ${X.intersection(Y)}');
  print('diffrence of X AND Y = ${X.difference(Y)}');

  print(X.first);
  print(X.last);
  print(X.length);
  print(X.isEmpty);
  print(X.isNotEmpty);
}
