class AreaCalculator {
  double calculateRectangleArea(Rectangle_Area rectangle) {
    return rectangle.width * rectangle.height;
  }

  double calculateCirclearea(areaofcircle circle) {
    return 3.14 * circle.radius * circle.radius;
  }
}

class Rectangle_Area {
  double height;
  double width;

  Rectangle_Area(this.height, this.width) {}
}

class areaofcircle {
  double radius;
  areaofcircle(this.radius);
}

//After Open Closed Principle
abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class tringle implements Shape {
  double hyp;
  double base;
  tringle(this.base, this.hyp);
  @override
  double area() => 0.5 * base * hyp;
}

class Calculator {
  double calculateArea(Shape shape) {
    return shape.area();
  }
}

void main() {
  // Create a Rectangle object
  Rectangle_Area rectangle = Rectangle_Area(5, 6);
  areaofcircle circleob = areaofcircle(20);

  // Create an AreaCalculator object
  AreaCalculator calculator = AreaCalculator();
  AreaCalculator circlcalculatore = AreaCalculator();

  // Calculate the area of the rectangle
  double area = calculator.calculateRectangleArea(rectangle);
  double circlearea = circlcalculatore.calculateCirclearea(circleob);

  // Print the area
  // print("Rectangle Area: $area");
  // print("Area of circle:$circlearea");

  //After Open Closed Principle

  Shape rectangle_area = Rectangle(20, 30);
  Shape circle_area = Circle(50);
  Shape triangle_area = tringle(50, 100);

  Calculator area_calculator = Calculator();
  print("Rectangle Area: ${area_calculator.calculateArea(rectangle_area)}");
  print("Circel Area: ${area_calculator.calculateArea(circle_area)}");
  print("Triangle Area: ${area_calculator.calculateArea(triangle_area)}");
}

//After Open Closed Principle
