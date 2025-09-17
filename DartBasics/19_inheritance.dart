// Dart does not support multiple inheritance

void main() {
  Vehicle myVehicle = Vehicle();
  print("Speed: ${myVehicle.speed} km/h");
  myVehicle.acclerate();
}

class SomeClass {
  double speed = 10; // km/h

  void acclerate() {
    speed += 20;
  }
}

class Vehicle extends SomeClass {
  bool isEngileOn = false;
  bool isLightsOn = false;

  void startEngile() {
    isEngileOn = true;
    isLightsOn = true;

    print("Engile Started!");
    print("Lights are on.");
  }

  // I have same method and matching function signature,
  // above in parent class. If we use myVehicle.acclerate
  // which is in parent also, so we are overriding the method of parent class
  // in child class. We need to use @override

  // The memeber 'acclerate' overrides an inherited memeber: it is recommended
  // to use @override for better readablility although it is optional
  @override
  void acclerate() {
    speed += 40;
    print('Now, speed is ${speed}');
  }
}

class Car extends Vehicle {
  void acclerate() {
    speed += 10;
    print('Car speed is : ${speed}');
  }
}
