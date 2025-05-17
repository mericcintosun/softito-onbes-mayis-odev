import 'dart:io';

void main() {
  print("Lütfen 3 kenar uzunluğu giriniz:");

  stdout.write("1. kenar: ");
  String? kenar1 = stdin.readLineSync();

  stdout.write("2. kenar: ");
  String? kenar2 = stdin.readLineSync();

  stdout.write("3. kenar: ");
  String? kenar3 = stdin.readLineSync();

  int a = int.parse(kenar1!);
  int b = int.parse(kenar2!);
  int c = int.parse(kenar3!);

  print("\nGirdiğiniz kenarlar: $a, $b, $c");

  if (a == b && b == c) {
    print("Bu üçgen eşkenar üçgendir.");
  } else if (a == b || a == c || b == c) {
    print("Bu üçgen ikizkenar üçgendir.");
  } else {
    print("Bu üçgen çeşitkenar üçgendir.");
  }
}
