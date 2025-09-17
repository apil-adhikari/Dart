void main() {
  // List declaration and initialization (Same as Array in other languages)
  // List is an abstract class in Dart

  ///----------------------------------

  // Without any type specification, List can hold any type of data
  List list1 = [10, 20, "30", "Hello", true, 50.4];
  print(list1);
  print(list1[1]); // Accessing elements using index
  print(list1.runtimeType); // To check the type of List

  ///----------------------------------
  /// List with type specification
  // We should specify the type of data the List will hold because Dart is a type-safe language and if we don't specify the type, it will take dynamic type by default which can lead to runtime errors
}
