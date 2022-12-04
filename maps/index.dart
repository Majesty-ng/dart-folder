import 'dart:io';

void main() {
  Map<String, String> countrycapital = {
    "nigeria": "abuja",
    "america": "washington dc",
    "china": "beijing",
    "india": "new delhi"
  };
  //containvalue &&containkey returns a boolean
  print(countrycapital.containsValue("new delhi"));
  //adding a key and value
  countrycapital["sa"] = "south africa";
  //printing a value
  print(countrycapital["america"]);
  //prints out all keys in a map
  print(countrycapital.keys);
  //prints out all the vvlues of a map
  print(countrycapital.values);
  //boolean
  countrycapital.isEmpty;
  //.length of a map
  countrycapital.length;
  //print("does map contain key sun: ${countrycapital.containsKey("china")}");
  // String? restart = "yes";
  // do {
  //   stdout.write("write: ");
  //   int? op = int.parse(stdin.readLineSync()!);
  //   op == 23 ? stdout.writeln(op) : stdout.writeln("hello");
  //   stdout.write("restart:");
  //   restart = stdin.readLineSync();
  // } while (restart == "yes");
  //countrycapital.values.toList();
}

