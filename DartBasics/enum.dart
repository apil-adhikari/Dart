void main() {
  // final employee1 = Employee("Apil", EmployeeType.swe);
  final employee2 = Employee("Naman", EmployeeType.finance);

  final employee3 = Employee("Sonal", EmployeeType.marketing);
  employee2.fn();
  employee3.fn();
}

enum EmployeeType {
  swe(200000),
  finance(250000),
  marketing(150000);

  final int salary;
  const EmployeeType(this.salary);
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch (type) {
      case EmployeeType.swe:
        print("Software Engineer ${type.salary}");
      case EmployeeType.finance:
        print("Finance ${type.salary}");
      default:
        print("Marketing ${type.salary}");
    }
  }
}
