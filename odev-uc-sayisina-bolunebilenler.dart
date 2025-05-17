import 'dart:io';

void main() {
  print("=== 3 ile bölünüp 4 ile bölünmeyen sayılar ===");

  // Başlangıç değeri al
  stdout.write("Başlangıç değerini giriniz: ");
  String? baslangicGiris = stdin.readLineSync();
  int baslangic = int.parse(baslangicGiris!);

  // Bitiş değeri al
  stdout.write("Bitiş değerini giriniz: ");
  String? bitisGiris = stdin.readLineSync();
  int bitis = int.parse(bitisGiris!);

  print("\nSonuç:");

  int i = baslangic;
  while (i <= bitis) {
    if (i % 3 == 0 && i % 4 != 0) {
      print(i);
    }
    i = i + 1;
  }
}