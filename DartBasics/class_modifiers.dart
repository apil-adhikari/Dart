/// DART CLASS MODIFIERS:
/// Dart Docs: https://dart.dev/language/class-modifiers
///
/// Class Modifiers are noting but a way to control how class and mixins can be
/// used from both within the library and outside the library.
///
/// The types of class modifiers are as follows:
/// abstract, base, final, interface, sealed, mixin
///
///  `abstract`
/// - It doesnot require a full concrete implementation of methods and interface,
///   it can have abstract methods(methods without implementations)
/// - They can be extened as well as implemented, but abstract classes can't
///   be instantiated
///
/// `base`
/// - base class can be extened in other library but cannot be implemented and
/// more importantly, the constructor of the base class will be called whenever
/// an instance of subtype of the class is created

void main() {
  Animal animal = Cat();

  switch (animal) {
    case Dog():
      print('dog');

    case Human():
      print("Human");

    case Cat():
      print("Cat");
  }
}

sealed class Animal {} //  Direct subtypes should be handled, and can't be instantiated
// on its own

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}

/// Final Modifier:
/// Similar to sealed class, cant be extended or implemented outside the class
/// but inside the same library can be extened or implemented
/// class with final modifier can be constructed or instantiated
/// Whatever class implementes the final class should be either base,
/// final or sealed class
final class Animal1 {}

/// Base Class
/// Base class cannot be implemented but we can extend base class
/// Whatever class implementes the base class should be either base,
/// final or sealed class.
/// Whenever we extend the base class and create an object of the subclass,
/// the constructor of the base call will be called automatically.

base class Animal2 {}

/// Interface
/// Interface class can only be implemented(even if we are outside the library)

interface class Animal3 {}

/// Pure Interface : combine with abstract class

abstract interface class Animal4 {}

// Now this will put some logic:
// This class now cannot be instantiated.
// It can have abstract methods
// Can only be implemented

/// Mixin class

mixin class Aninal5 {}// this type of class can be used using 'with' keyword
// such that not using the class hierarchy