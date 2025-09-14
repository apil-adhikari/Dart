// Example of positional and named arguments in Dart

void main() {
  // Positional arguments
  greet(25, "Alice"); // Arguments order matters here

  // Named arguments
  introduce(name: "Bob", age: 30, city: "Kathmandu");
}

// Function with positional arguments
void greet(int age, String name) {
  print("Hello, my name is $name and I am $age years old.");
}

// Syntax for name arguments: functionName({Type param1, Type param2}). Type is
// either required or optional(?)
void introduce({
  required int age,
  required String name,
  String country = "Nepal", // Default value
  String? city, // Optional parameter
}) {
  // Arguments order doesn't matter here

  print(
    "Hi, I'm $name and I'm $age years old. I live in $country. ${city != null ? 'I live in $city.' : ''}",
  );
}

// Rule of thumb: Use named arguments when a function has more than 2 parameters
// or when parameters are optional. Use positional arguments for functions with
// 2 or fewer parameters where order is important.
// This improves code readability and maintainability.
// Named arguments can also have default values, making them optional.
// Example with default values
void describe({String hobby = "reading", String city = "unknown"}) {
  print("I enjoy $hobby and I live in $city.");
}

// We can also mix positional and named arguments in a function
void mixedExample(int id, {required String name, String? description}) {
  print("ID: $id, Name: $name, Description: ${description ?? 'N/A'}");
}
// Named arguments are enclosed in curly braces {} and can be provided in any order
// Positional arguments are provided in the order defined in the function signature

// Example of anonymous function:
var multiply = (int a, int b) => a * b;
// This is a function without a name, often used for short operations or as
// callbacks.
