import 'dart:io';
import 'dart:math';

class SI {
  double? principal;
  double? rate;
  double? time;
  double? yr;
  double? newval;
  double? compounInterest(
    //p- (1 + r/n)**nt
      double? principal, double? rate, double? time, double? yr) {
    this.principal = principal;
    this.rate = rate;
    this.time = time;
    this.yr = yr;
    newval = 1 + (rate! / yr!);
    double retval = 1;
    for (int i = 0; i < time!; i++) {
      retval *= newval!;
    }

    return (principal! * retval) - principal;
  }
}

void main() {
  print(2);
  stdout.write("input interest: ");
  double? principal =double.parse(stdin.readLineSync()!);
  stdout.write("input rate: ");
  double? rate = double.parse(stdin.readLineSync()!);
  stdout.write("input time: ");
  double? time = double.parse(stdin.readLineSync()!);
  stdout.write("input number of years: ");
  double? yr = double.parse(stdin.readLineSync()!);
  SI simpleinterest = SI();
  print(simpleinterest);
  print(simpleinterest.compounInterest(principal, rate, time, yr));
}
