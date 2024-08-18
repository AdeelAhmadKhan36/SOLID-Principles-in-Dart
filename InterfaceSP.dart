abstract class MultiFunctionDevice {
  void printmethod();
  void scan();
}

class OldPrinter implements MultiFunctionDevice {
  @override
  void printmethod() {
    print("Printing,..");
  }

  @override
  void scan() {
    throw Exception("Old printer can't scan!");
  }
}

//After Intreface Segregation
abstract class Printer {
  void printmethod();
}

abstract class Scanner {
  void scan();
}

class MultiFunctionPrinter implements Printer, Scanner {
  @override
  void printmethod() {
    print("Printing...");
  }

  @override
  void scan() {
    print("Scanning...");
  }
}

class SimplePrinter implements Printer {
  @override
  void printmethod() {
    print("Printing...");
  }
}

void main() {
  // MultiFunctionDevice printed = OldPrinter();
  // printed.printmethod();
  // printed.scan();

  //After Intreface Segregation
  Printer printer = SimplePrinter();
  printer.printmethod();

  MultiFunctionPrinter mfp = MultiFunctionPrinter();
  mfp.printmethod();
  mfp.scan();
}
