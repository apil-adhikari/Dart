void main() {
  // List declaration and initialization (Same as Array in other languages)
  // List is an abstract class in Dart

  ///----------------------------------

  // Without any type specification, List can hold any type of data
  // List list1 = [10, 20, "30", "Hello", true, 50.4];
  // print(list1);
  // print(list1[1]); // Accessing elements using index
  // Accsssing the index without any element
  // print(list1[9]); // Error: RangeError (length): Invalid value: Not in inclusive range 0..5: 9
  // print(list1.runtimeType); // Output: dynamic

  ///----------------------------------
  /// List with type specification
  // We should specify the type of data the List will hold because Dart is a type-safe language and if we don't specify the type, it will take dynamic type by default which can lead to runtime errors

  // Syntax of list which can hold specific data type:
  // List<DataType> listName = [values];

  // List<String> subjects = ["Math", "Physics", "Chemistry"];
  // print(subjects.runtimeType);
  // List<double> marks = [95.60, 80.4, 99];
  // print(marks.runtimeType);
  // print(marks[2]);

  final studentApil = Student("Hello", 10);
  List<Student> students = [
    studentApil,
    Student("Adhikari", 20),
    studentApil,
    studentApil,
  ];

  print(students.toSet());

  /// OPERATIONS IN LIST:

  // Adding at the end of the list: using .add()
  students.add(Student("New kid", 30));

  // Adding at specified index
  students.insert(0, Student("Apil Adhikari", 40));
  print(students);

  // Remove
  // students.remove(studentApil); // Now studentApil is the same instance.
  // This would not work if we try to remove  Student("Adhikari") because these
  //  are different instances.

  print(students);

  // FILTER:

  // 1. creat new list of students that is empty
  // 2. add other student that have grade more than 30

  // List<Student> filteredStudents = [];
  // for (int i = 0; i < students.length; i++) {
  //   if (students[i].marks >= 30) {
  //     filteredStudents.add(students[i]);
  //   }
  // }

  // for (final student in students) {
  //   if (student.marks >= 30) {
  //     filteredStudents.add(student);
  //   }
  // }

  final filteredStudents = students.where((student) => student.marks >= 30);
  print(filteredStudents);
  print(filteredStudents.runtimeType);
  print(filteredStudents.toList());

  print("Filtered Students: $filteredStudents");
  // Use of Generics
  final student = Student<String>("Apil", 50);
  print(student.name);
  print("Run time type of Student: ${student.runtimeType}");

  final testStudent = Student("Hari", 50);
  Set<Student> StudentSet = {
    Student("Apil", 10),
    Student("Ram", 20),
    testStudent,
    testStudent,
  };

  print("SET: ${StudentSet}");

  print("------------------------------------------");
  print("Map in Dart");

  /// Map: Simiar to Objects in other programming
  /// It is simply key:value pair

  // List marksOfStudents = [10, 20, 30];

  Map<String, int> marksOfStudents = {"Ram": 10, "Shyam": 30, "Apil": 30};

  print(marksOfStudents['test']?.isEven);

  if (marksOfStudents['Apil'] == null) {
    print('Key does not exists');
  } else {
    print(marksOfStudents['Apil']!.isEven);
  }
}

class Student<T> {
  final T name;
  final int marks;

  Student(this.name, this.marks);

  // Generics can also be used in function's parameter
  void printName(T name) {
    print("New name: ${name}");
  }

  @override
  String toString() => 'Student: $name';
}
