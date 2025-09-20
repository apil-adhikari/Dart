// Usin async-await:

// void main() async {
//   // Futures (Promises in other languages)
//   print("First");
//   final futureValue = await giveResultAfter2Sec();
//   print(futureValue);
//   print("hey");
//   print("Hello");
//   print("Greetings");
// }

// Future<String> giveResultAfter2Sec() {
//   return Future.delayed((Duration(seconds: 2)), () async {
//     return "Hey!!!";
//   });
// }

// We can also use .then syntax on future
// .then does not require to have async in the function

// import 'package:http/http.dart';

void main() {
  print("First");
  giveResutlAfter2Sec().then((value) => print(value));
  print("Second");
  print("Third");
}

Future<String> giveResutlAfter2Sec() {
  return Future.delayed(Duration(seconds: 2), () async {
    return "Delayed Result";
  });
}
