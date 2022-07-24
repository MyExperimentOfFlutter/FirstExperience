import 'dart:io';

abstract class Marks {
  var sub1, sub2, sub3;
  var studentName;

  double calculateMarks() {
    return (sub1 + sub2 + sub3) / 300;
  }
}

class studentA extends Marks {
  var sub1, sub2, sub3;
  studentA(this.sub1, this.sub2, this.sub3);
  double calculateMarks() {
    return ((sub1 + sub2 + sub3) / 300) * 100;
  }
}

class studentB extends Marks {
  var sub1, sub2, sub3;
  var sub4;
  studentB(this.sub1, this.sub2, this.sub3, this.sub4);
  double calculateMarks() {
    return ((sub1 + sub2 + sub3 + sub4) / 400) * 100;
  }
}

void main() {
  var m1, m2, m3, m4, m5, m6, m7;

  print('Enter Marks for Student A(3 subjects)');
  m1 = int.parse(stdin.readLineSync()!);
  m2 = int.parse(stdin.readLineSync()!);
  m3 = int.parse(stdin.readLineSync()!);

  var A = studentA(m1, m2, m3);
  print('Marks of student A = ${A.calculateMarks()}%');

  print('Enter marks for Student B(4 subjects)');
  m4 = int.parse(stdin.readLineSync()!);
  m5 = int.parse(stdin.readLineSync()!);
  m6 = int.parse(stdin.readLineSync()!);
  m7 = int.parse(stdin.readLineSync()!);

  var B = studentB(m4, m5, m6, m7);
  print('Marks of student B = ${B.calculateMarks()}%');
}
