// Object-Oriented Programming in Dart
// Concepts: 1. Polymorphism: able to take multiple forms 2. Inheritance:able to get the methods and properties of parent class
// 3. Encapsulation: Encapulating the data by maing the class, methods, properties the private property
//4. Abstraction: Hiding the complex implementation details and showing only the essential features of the object to the user.
// For abstraction, we use abstract classes and methods in Dart. They cannot be instantiated directly and must be extended by other classes.

void main() {
  // Polymorphism Example
  Animal animal = Dog(); // animal is of type Animal but holds a Dog object
  print(animal.runtimeType);
  animal.sound(); // Outputs: Dog barks.
  animal = Cat(); // animal is of type Cat now
  print(animal.runtimeType);
  animal.sound(); // Outputs: Cat meows.

  // Abstraction Example
  Vehicle myVehicle = Car();
  myVehicle.start(); // Output: Car starts with a key.

  Vehicle myVehicle2 = Bike();
  myVehicle2.start(); // Output: Bike starts with a button.
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

// Abstraction Example in Dart

// Abstraction is the concept of hiding complex implementation details and showing only the essential features of an object.
// In Dart, abstraction is achieved using abstract classes and methods.

// The abstract class 'Vehicle' defines a blueprint for all vehicles.
// It hides the internal details of how a vehicle starts and only exposes the 'start' method, which must be implemented by subclasses.
abstract class Vehicle {
  void start();
  // Abstract method: No implementation here, just the method signature.
}

// 'Car' class extends 'Vehicle' and provides its own implementation of 'start'.
// The user doesn't need to know how the car engine works internally, just how to start it.
// Internal engine details are hidden using private methods and properties.
class Car extends Vehicle {
  // Private property: Internal engine status (not accessible outside this class)
  bool _engineReady = false;

  // Private method: Prepares the engine (internal mechanism)
  void _prepareEngine() {
    print("Preparing engine... $_engineReady");
    _engineReady = true;
  }

  @override
  void start() {
    _prepareEngine(); // Internal workings are hidden from the user
    if (_engineReady) {
      print("Car starts with a key.");
    } else {
      print("Engine not ready.");
    }
  }
}

// 'Bike' class extends 'Vehicle' and provides its own implementation of 'start'.
// Again, the internal mechanism is hidden; only the way to start the bike is shown.
class Bike extends Vehicle {
  @override
  void start() {
    print("Bike starts with a button.");
  }
}

// Example usage:
// Vehicle myVehicle = Car();
// myVehicle.start(); // Output: Car starts with a key.
//
// Vehicle myVehicle2 = Bike();
// myVehicle2.start(); // Output: Bike starts with a button.

// Explanation:
// Abstraction hides the unnecessary details (like engine mechanics, wiring, etc.) and exposes only the useful functionality (how to start the vehicle).
// This makes the code easier to use and maintain, as users interact only with the essential features.

// Private methods and properties (like _prepareEngine and _engineReady) are used to define internal workings.
// The abstract method (start) exposes only what is useful to the user.
