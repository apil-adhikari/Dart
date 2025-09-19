void main() {
  try {
    print(10 ~/ 0);
  } catch (e) {
    print("Exception occured: $e");
  } finally {
    // finally block always executes:
    // It is mainly used to clean up resources after certain operations has been
    // completed in try catch block.
    print("FINAL Block. This will be called even if the error occurs or not.");
  }

  print("Apil");
}
