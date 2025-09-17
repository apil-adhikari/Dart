void main() {
  // Inheritance
  // "is-a" relationship
  // Abstract classes
  // Object Oriented Programming(OOP)

  Car myCar = Car();
  myCar.printNoOfWheels();
  print(myCar.isEngineWorking);

  Truck myTruck = Truck();
  myTruck.printNoOfWheels();
  print(myTruck.isEngineWorking);
  myTruck.accelerate();
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightsOn = true;

  void accelerate() {
    speed += 10;
    print("Vehicle accelerated to $speed");
  }
}

class Car extends Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightsOn = true;

  int noOWheels = 4;

  void printNoOfWheels() {
    print(noOWheels);
  }
}

class Truck extends Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightsOn = true;

  int noOWheels = 4;

  void printNoOfWheels() {
    print(noOWheels);
  }
}
