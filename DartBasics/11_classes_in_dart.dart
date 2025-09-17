void main() {
  // Inheritance
  // If "is-a" relationship exists between two classes, then we can use inheritance.
  // Example: Dog is an Animal, so Dog class can inherit from Animal class.
  // Syntax: class ChildClass extends ParentClass {}

  // Creating an object of Car class (also know as instantiation)
  Car myCar = Car();

  // Accessing properties and methods of Vehicle class through Car class object
  print("Car speed: ${myCar.speed} km/h");
  print("Is engine on? ${myCar.isEngineOn}");
  print("Is lights on? ${myCar.isLightsOn}");
  myCar.startEngine();
  myCar.acclerate();

  print("\n");
  Truck myTruck = Truck();
  print("Truck speed: ${myTruck.speed} km/h");
  print("Is engine on? ${myTruck.isEngineOn}");
  myTruck.startEngine();
  myTruck.acclerate();

  Vehicle myVehicle = Car();
  // myVehicle. acclerate(); // Error: The method 'acclerate' isn't defined for the type 'Vehicle'.

  // Type Casting: If we are sure about the type of the object, we can cast it to that type to access its specific properties and methods.
  // This is mainly used when we have a reference of parent class but the actual object is of child class.
  // This is preferred to use when we have dynamic data types.

  print(myVehicle.runtimeType);

  print(
    (myVehicle as Car).noOfWheels,
  ); // Type casting. This is safe because myVehicle is actually a Car. During runtime, it checks the type before casting.

  // This will throw an error during runtime because myVehicle is not a Truck.
  // print(
  //   (myVehicle as Truck).noOfWheels,
  // );
  //
  //  To avoid runtime error, we can use 'is' keyword to check the type before casting.
  if (myVehicle is Truck) {
    print(myVehicle.noOfWheels);
  } else {
    print("myVehicle is not a Truck");
  }
}

class Vehicle {
  double speed = 0;
  bool isEngineOn = false;
  bool isLightsOn = false;

  void startEngine() {
    isEngineOn = true;
    print("Engine started");
    isLightsOn = true;
    print("Lights turned on");
  }
}

// Car class inherits from Vehicle class
class Car extends Vehicle {
  int noOfWheels = 4;

  void acclerate() {
    speed += 10;
    print("Car acclerated to ${speed} km/h");
  }
}

class Truck extends Vehicle {
  int noOfWheels = 16;

  void acclerate() {
    speed += 50;
    print("Truck acclerated to ${speed} km/h");
  }
}

// Inheritance in Dart:
// 1. Single Inheritance: A class can inherit from only one class.
// 2. Multilevel Inheritance: A class can inherit from a class which is also inheriting from another class.
// 3. Hierarchical Inheritance: Multiple classes can inherit from a single class.
// 4. Dart does not support Multiple Inheritance (a class cannot inherit from multiple classes) to avoid complexity and ambiguity.
// 5. Dart supports Mixins to achieve similar functionality as Multiple Inheritance.
// 6. All classes in Dart implicitly inherit from the Object class if no other superclass is specified.
// 7. The 'super' keyword is used to refer to the superclass (parent class) from the subclass (child class).
// 8. The 'is' keyword is used to check the type of an object.
// 9. The 'as' keyword is used for type casting.
// 10. The 'runtimeType' property is used to get the actual type of an object at runtime.
