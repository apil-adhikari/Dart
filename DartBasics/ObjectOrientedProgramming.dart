// Object-Oriented Programming in Dart
// Concepts: 1. Polymorphism 2. Inheritance 3. Encapsulation 4. Abstraction
// 1. Polymorphism: The ability of different classes to be treated as instances of the same class through a common interface.

void main() {
  // Polymorphism Example
  Animal animal = Dog(); // animal is of type Animal but holds a Dog object
  print(animal.runtimeType);
  animal.sound(); // Outputs: Dog barks.
  animal = Cat(); // animal is of type Cat now
  print(animal.runtimeType);
  animal.sound(); // Outputs: Cat meows.
  // Here, the same method 'sound' behaves differently based on the object type (Dog or Cat).
}

class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks.");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows.");
  }
}
