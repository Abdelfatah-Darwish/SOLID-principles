// Printer Interface
abstract class Printer {
  void executePrint();
}

// Scanner Interface
abstract class Scanner {
  void executeScan();
}

// Fax Interface
abstract class Fax {
  void executeFax();
}

// Ink Printer
class InkPrinter implements Printer {
  @override
  void executePrint() {
    print("Printing using Ink Printer…");
  }
}

// Laser Printer
class LaserPrinter implements Printer, Scanner {
  @override
  void executePrint() {
    print("Printing using Laser Printer…");
  }

  @override
  void executeScan() {
    print("Scanning using Laser Printer…");
  }
}

// All-In-One Printer
class AllInOnePrinter implements Printer, Scanner, Fax {
  @override
  void executePrint() {
    print("Printing using All-In-One Printer…");
  }

  @override
  void executeScan() {
    print("Scanning using All-In-One Printer…");
  }

  @override
  void executeFax() {
    print("Faxing using All-In-One Printer…");
  }
}