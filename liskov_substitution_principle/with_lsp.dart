// Base class: Bird
class Bird {
  void move() {
    print("Bird is moving");
  }
}

// Subclass for flying birds
class FlyingBird extends Bird {
  void fly() {
    print("Bird is flying");
  }
}

// Subclass: Sparrow can fly
class Sparrow extends FlyingBird {}

// Subclass: Penguin cannot fly, but it can move (swim)
class Penguin extends Bird {
  @override
  void move() {
    print("Penguin is swimming");
  }
}

// Function that works for any type of Bird
void letBirdMove(Bird bird) {
  bird.move();
}

void main() {
  Bird sparrow = Sparrow();  // A sparrow can move and fly
  Bird penguin = Penguin();  // A penguin can move (swim)

  letBirdMove(sparrow);  // Output: Bird is moving
  letBirdMove(penguin);  // Output: Penguin is swimming
}