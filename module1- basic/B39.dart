class Member {
  var name, age, salary, address, mobile;
/*
  printSalary(name, salary) {
    print('salary = $salary,name = $name');
  }
  */
  printSalary() {
    print('salary = $salary,name = $name');
  }
}

class Employee extends Member {
  var specialization, dept;
}

class Manager extends Member {
  var specialization, dept;
}

void main() {
  var e = Employee();
  e.name = 'Employee 1';
  e.age = 30;
  e.salary = 13000;
  e.address = 'Address 1';
  e.printSalary();

  //For manager

  var m = Manager();
  m.name = 'Manager 1';
  m.age = 30;
  m.salary = 40000;
  m.address = 'Address 2';
  m.printSalary();
}
