void main() {}

// Parent Class
class Vehicle {
  bool isEngineOn = false;
  bool isLightsOn = false;

  void startEngine() {
    isEngineOn = true;
    print('Engine started');
  }

  void acclerates() {
    print("Vehicle is accelerating.");
  }

  void stopEngine() {
    isEngineOn = false;
    print('Engine stopped');
  }
}

// Implementing the Vehicle class in other classes using 'implements' keyword
// Why is it necessary? Because if we want to use the properties and methods of
// Parent class in Child class, we can use 'extends' keyword. But if we want
// to use the properties and methods of Parent class in multiple Child classes,
// we can use 'implements' keyword. This is because Dart does not support
// multiple inheritance using 'extends' keyword.

// Beside this, if we use 'implements' keyword, we need to override all the
// properties and methods of Parent class in Child class.
// It means that we need to use that properties and methods in Child class.

// If a class implements another class, it must provide an concrete implementation
// of all the instance members (methods, getters, and setters) defined in the
// interface of the implemented class. This means that the implementing class
// must define its own versions of these members, providing the specific behavior
// that is appropriate for that class.

// Child Class
class Class implements Vehicle {
  // Implementing the Parent class, we should override all the properties and
  // methods of parent class in Child class based on our requirement.
  int noOfWheels = 4;

  @override
  bool isEngineOn = false;

  @override
  bool isLightsOn = false;

  @override
  void startEngine() {
    isEngineOn = true;
    print("Engine started. ");
  }

  @override
  void stopEngine() {
    isEngineOn = false;
    print("Engine stopped.");
  }

  // ACCESSING PARENT CLASS MEMBERS AND METHODS::::
  // Accessing the properties and methods of Parent class in Child class
  // we could use 'super' keyword if we use 'extends' keyword but here we
  // are using 'implements' keyword, so we can't use 'super' keyword.

  // Implements only provide the blueprint of the parent class to child class,
  // it does not provide the implementation of the parent class. We need to
  // provide the implementation of the methods and properties in child class.

  @override
  void acclerates() {
    // print(super.acclerates()); // This cannot be done.
    // The method 'acclerates' is always abstract in the supertype.
  }
}

// Child Class
class Truck extends Vehicle {
  int noOfWheels = 16;

  void printSomething() {
    print('No of wheels: $noOfWheels');
  }
}

// Child Class
class Bike extends Vehicle {
  int noOfWheels = 2;

  void printSomething() {
    print('No of wheels: $noOfWheels');
  }
}

/// Abstract Class
/// An abstract class is a class that cannot be instantiated directly.
/// It is meant to be extended or implemented by other classes.
/// Abstract classes can contain abstract methods (methods without implementation)
/// as well as concrete methods (methods with implementation).
/// Abstract classes are useful for defining common interfaces and behaviors
/// that can be shared among multiple subclasses.
/// To define an abstract class in Dart, you use the 'abstract' keyword
/// before the class declaration.
/// We can 'extend' or 'implement' an abstract class in another class.
///
///

// Findings:
/// 1. An abstract classnot be instantiated directly.
/// 2. An abstract class can contain abstract methods (methods without implementation)
///    as well as concrete methods (methods with implementation).
/// 3. If a class extends an abstract class, it must provide concrete implementations
///    for all abstract methods defined in the abstract class.
/// 4. If a class implements an abstract class, it must provide concrete implementations
///    for all instance members (methods, getters, and setters) defined in the
///   interface of the abstract class. This includes both abstract methods and
///   concrete methods.
/// 5. A class can extend only one class (abstract or concrete) but can implement
///    multiple classes (abstract or concrete).
/// 6. A class can extend only one class but can implement multiple classes.

abstract class Animal {
  void makeSound(); // Abstract method (no implementation)

  void sleep() {
    print('Animal is sleeping');
  } // Concrete method (with implementation)
}

class SomeClass {
  void someMethod() {
    print("This is some method in SomeClass");
  }
}

class Dog extends Animal {
  // When using extends, we must override the abstract method, methods with concrete
  // implementations are optional to override.
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

// Can implement multiple classes
class Cat implements Animal, SomeClass {
  // When using implements, we must override all the methods (abstract and concrete)

  @override
  void makeSound() {
    print("Meow! Meow!");
  }

  @override
  void sleep() {
    print("Cat is sleeping.");
  }

  @override
  void someMethod() {
    print("This is some method in Cat class.");
  }
}
