import 'dart:collection';

class AList {
  var List1 = ['ABC', 'DEF', 'GHI', 'JKL', 'MNO'];
  var List2 = ['A', 'B', 'C'];
}

void main() {
  AList a1 = new AList();
  var aList1 = a1.List1.add('PQR');

  print('print values of list1 using iterator');
  a1.List1.forEach((element) {
    print(element);
  });

  var list1 = ['A', 'B', 'C', 'D', 'E'];

  print('1st - method of iterate');
  for (var num in list1) {
    print(num);
  }
  print('2nd - method of iterate');
  list1.forEach((element) => {print(element)});

  print('4th method of iterate');
  for (int i = 0; i < list1.length; i++) {
    print(list1[i]);
  }

  print('5th method of iterate');
  for (int i = 0; i < list1.length; i++) {
    for (int j = 0; j < list1[i].length; j++) {
      print(list1[i][j]);
    }
  }

  print('Combined List');
  //combining of list
  var l1 = [1, 2];
  var l2 = null;
  var l3 = [5, 6];
  var combinedList = [l1, l2, l3];

  print(combinedList);
  print('combined list using spread operator = ');

  print('****** Sorted Method ******');
  var listToBeSorted = [0, 6, 3, 6, 5, 8, 0, 1];
  print('sorted list ');
  var sortedList = listToBeSorted.sort();
  print(listToBeSorted);

  //dart / flutter list collection if and for

  //unmodifiable list
  var unModifiableList = List.unmodifiable(['A', 'B', 1, 2, 3]);
  //we can not modify unmodifiable list

  print('unmodifiable list');
  print(unModifiableList);

  var generatedList = List.generate(5, (index) => index * 2);
  print('generated list = $generatedList');

  var cmbList1 = [1, 2, 3];
  var cmbList2 = [4, 5, 6];
  var cmbList3 = [7, 8, 9];

  var cmbListCombined1 = List.from(cmbList1)
    ..addAll(cmbList2)
    ..addAll(cmbList3);

  print('******combined list = 1*******');
  print(cmbListCombined1);
}
