// Printer Interface
abstract class Printer {
  void executePrint();
  void executeScan();
  void executeFax();
}

// Ink Printer
class InkPrinter implements Printer {
  @override
  void executePrint() {
    print("Printing using Ink Printer…");
  }

  @override
  void executeScan() {
    // Not supported by Ink Printer
    throw UnsupportedError("Scan is not supported by Ink Printer.");
  }

  @override
  void executeFax() {
    // Not supported by Ink Printer
    throw UnsupportedError("Fax is not supported by Ink Printer.");
  }
}

// Laser Printer
class LaserPrinter implements Printer {
  @override
  void executePrint() {
    print("Printing using Laser Printer…");
  }

  @override
  void executeScan() {
    print("Scanning using Laser Printer…");
  }

  @override
  void executeFax() {
    // Not supported by Laser Printer
    throw UnsupportedError("Fax is not supported by Laser Printer.");
  }
}

// All-In-One Printer
class AllInOnePrinter implements Printer {
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