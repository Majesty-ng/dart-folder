import 'dart:io';
import 'dart:math';

//class example
class animal {
  //object of the class
  String? name = "cow";
  int? numberoflegs;
  int? lifespan;

  void display() {
    print("animal name: $name");
    print("numberof legs: $numberoflegs");
    print("life span: $lifespan");
  }

  void animalnoise(String name) {
    this.name = name;
    switch (this.name) {
      case "moo":
        print("cow");
        break;
      case "bark":
        print("dog");
        break;
      case "neighs":
        print("horse");
        break;
      default:
        break;
    }
  }
}

//class person
class person {
  String? name;
  String? phone;
  bool? isMarried;

  void display() {
    print("person name: $name");
    print("nameof phone: $phone");
    print("married: $isMarried");
  }
}

class area {
  double? length;
  double? breath;
  double calculatearea() {
    return length! * breath!;
  }
}

//animal feeding mode
//animal noise
//[nn,ne,ng]   [mm,nf,ne]
class SI {
  double? principal;
  double? rate;
  double? time;
  double calc(double principal, double rate, double time) {
    this.principal = principal;
    this.rate = rate;
    this.time = time;
    return (principal * rate * time) / 100;
  }
}

void main() {
  animal nameOfA = animal();
  nameOfA.name = "moo";
  nameOfA.numberoflegs = 4;
  nameOfA.lifespan = 56;
  nameOfA.display();
  nameOfA.animalnoise("moo");
  //nameOfA.animalnoise("moo");
  SI simpleinterest = SI();
  simpleinterest.principal = 10000;
  simpleinterest.rate = 3.5;
  simpleinterest.time = 40;
  simpleinterest.calc(10000, 3.5, 40);
}
