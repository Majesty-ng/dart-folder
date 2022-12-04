import 'dart:io';
import 'dart:math';

class SI {
  double? principal;
  double? rate;
  double? time;
  double? yr;
  double? newval;
  double? compounInterest(
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
  SI simpleinterest = SI();
  print(simpleinterest);
  print(simpleinterest.compounInterest(200, 300, 5, 6));
}
