void main() {
  var details = {
    'username': 'Tom',
    'email': 't@email.com',
    'password': 'tom',
  };
  details['Uid'] = 'U001';
  print('$details');

  print(details.keys);
  print(details.values);
  print(details.isEmpty);
  print(details.isNotEmpty);
  print(details.runtimeType);

  details.addAll({'A': 'ABC', 'B': 'BCD', 'C': 'CDE'});
  print(details);

  details.remove('A');
  print(details);

  print('keys are present in details:');
  details.forEach((key, value) {
    print(key);
  });

  print('\n');
  print('values are present in details');
  details.forEach((key, value) {
    print(value);
  });

  details.clear();
  print('no values or key present in details');
  print(details);
}
