// Mixins: A mixin is a way of reusing a class's code in multiple class hierarchies.
// In Dart, mixins are used to add functionality to classes without using inheritance.
// Mixin do not establish "Parent-Child" relationship.
//

mixin Walker {
  void walk() {
    print("Walking...");
  }
}

mixin Flyer {
  void fly() {
    print("Flying...");
  }
}

// mixin SomeMixin on  ObjectName { // on can restrict the use of mixin anywhere we want
mixin SomeMixin {
  void hello() {
    print("Hello");
  }
}

// Since bird can fly as well as walk, we use the Flyer mixin  to add flying capabilities and Walker mixing to add walking capabilities to the Bird class.
class Bird with Flyer, Walker {
  // Birds now has both walk() and fly() methods
}

// Similarly, since Dog can walk as well as bark, we use the Walker mixin to add walking capabilities to the Dog class.
class Dog with Walker {
  void bark() {
    print("Barking...");
  }
}

// CLASS AS MIXIN (mixin class)

// mixin class Bird {} // we can create class with mixins and use 'with' kewyword
// class Dog with Bird { } // Now if the class is 'mixin class' we can use
// class as mixin using with keyword
// mixin class cannot extend any other class. It can't use 'with' or 'extends'.

/// IMPORTANT:
/// 1. Classes cannot be used as mixin using 'with' keyword.
/// 2. If we need to use class as mixin, we need to have 'mixin class'
///   then we can use class like mixin using 'with' keyword

void main() {
  var bird = Bird();
  bird.walk(); //Output: Walking...
  bird.fly(); //Output: Flying...

  var dog = Dog();
  dog.walk(); //Output: Walking...
  dog.bark(); //Output: Barking...
}
