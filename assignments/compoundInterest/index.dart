import 'dart:io';
import 'dart:math';

class SI {
  double? principal;
  double? rate;
  double? time;
  double? n;
  double? newval;
  //compound interest with me using a function for the power instead of using pow

  double? compoundInterest(
      //p- (1 + r/n)**nt
      double? principal,
      double? rate,
      double? time,
      double? n) {
    this.principal = principal;
    this.rate = rate;
    this.time = time;
    this.n = n;
    
    
    newval = 1 + (rate! / n!);
    double retval = 1;


    //function for raising a nmnber toa given power
    for (int i = 0; i < time!; i++) {
      retval *= newval!;
    }
    return (principal! * retval) - principal;
  }

  double compoundInterest2(
      double? principal, double? rate, double? time, double? n) {
    this.principal = principal;
    this.rate = rate;
    this.time = time;
    this.n = n;
    return (principal! * pow((1 + rate! / n!), time!)) - principal;
    //using the math method
  }
}
//main method
void main() {
  //print(2);
  String restart = "yes";
  do {
    //user prompts 
    stdout.write("input interest: ");
    double? principal = double.parse(stdin.readLineSync()!);
    stdout.write("input rate: ");
    double? rate = double.parse(stdin.readLineSync()!);
    stdout.write("input time: ");
    double? time = double.parse(stdin.readLineSync()!);
    stdout.write("input number of years: ");
    double? n = double.parse(stdin.readLineSync()!);

    //calling the method SI
    SI simpleinterest = SI();
    //print(simpleinterest);

    //program outputs
    stdout.write("the compound interest is equal to: ");
    //the first compoundinterest function
    stdout.writeln(simpleinterest.compoundInterest(principal, rate, time, n));
    
    
    
    //the second compoundinterest function
    stdout.writeln(simpleinterest.compoundInterest2(principal, rate, time, n));
    
    
    //user restart prompt
    stdout.write("do you want to restart? : ");
    restart = stdin.readLineSync()!;
  } while (restart == "yes");
}
