// Base class: Bird
class Bird {
  void fly() {
    print("Bird is flying");
  }
}

// Subclass: Sparrow can fly
class Sparrow extends Bird {}

// Subclass: Penguin cannot fly, but we're forcing it to use the fly method
class Penguin extends Bird {
  @override
  void fly() {
    // Penguins can't fly, so this causes a problem
    throw Exception("Penguins can't fly!");
  }
}

void letBirdFly(Bird bird) {
  bird.fly();
}

void main() {
  Bird sparrow = Sparrow();  // Works fine
  Bird penguin = Penguin();  // Causes an issue

  letBirdFly(sparrow);  // Output: Bird is flying
  letBirdFly(penguin);  // Throws an exception: Penguins can't fly!
}
