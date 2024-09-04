// Base class: Shape
abstract class Shape {
  double area();
}

// Subclass 1: Rectangle
class Rectangle implements Shape {
  Rectangle(this.width, this.height);

  double width;
  double height;

  @override
  double area() => width * height;
}

// Subclass 2: Circle
class Circle implements Shape {
  Circle(this.radius);

  double radius;

  @override
  double area() => 3.14 * radius * radius;
}