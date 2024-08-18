// class Bird {
//   void fly() {
//     print("Flying");
//   }
// }

// class Penguin extends Bird {
//   @override
//   void fly() {
//     throw Exception("Penguins can't fly!");
//   }
// }

//Liskov's Substitution
abstract class Bird {
  void move();
}

class Sparrow extends Bird {
  @override
  void move() {
    print("Sparrow flying");
  }
}

class Penguin extends Bird {
  @override
  void move() {
    print("Penguin swimming");
  }
}

void main() {
  // Bird bird = Penguin(); // This will throw an exception
  // bird.fly();

  //Liskov's Substitution

  Bird sparrow = Sparrow();
  Bird penguin = Penguin();
  sparrow.move();
  penguin.move();
}
