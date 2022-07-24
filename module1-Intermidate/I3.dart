import 'dart:io';

class Marks {
  int sub1 = 0, sub2 = 0, sub3 = 0;
  var grade;
  var percentage1;
  int percentage = 0;

  void calculate(sub1, sub2, sub3) {
    percentage = (((sub1 + sub2 + sub3) / 300) * 100).toInt();
  }

  String giveGrade() {
    // percentage = int.parse(percentage1);
    if (percentage >= 91 && percentage <= 100) {
      return 'AA';
    } else if (percentage >= 81 && percentage <= 90) {
      return 'AB';
    } else if (percentage >= 71 && percentage <= 80) {
      return 'BB';
    } else if (percentage >= 61 && percentage <= 70) {
      return 'BC';
    } else if (percentage >= 51 && percentage <= 60) {
      return 'CD';
    } else if (percentage >= 41 && percentage <= 50) {
      return 'DD';
    } else
      return 'fail';
  }
}

void main() {
  Marks marks = new Marks();
  int sub1 = 0, sub2 = 0, sub3 = 0;
  print('Please enter 3 subjects marks');
  sub1 = int.parse(stdin.readLineSync()!);
  sub2 = int.parse(stdin.readLineSync()!);
  sub3 = int.parse(stdin.readLineSync()!);

  marks.calculate(sub1, sub2, sub3);
  print('percentage = ${marks.percentage}');
  print('grade = ${marks.giveGrade()}');
}
