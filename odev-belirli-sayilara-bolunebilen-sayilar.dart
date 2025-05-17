import 'dart:io';

void main() {
  print("=== BÖLÜNEBİLEN SAYILARI BUL ===");

  // Başlangıç değeri al
  stdout.write("Başlangıç değerini giriniz: ");
  String? baslangicGiris = stdin.readLineSync();
  int baslangic = int.parse(baslangicGiris!);

  // Bitiş değeri al
  stdout.write("Bitiş değerini giriniz: ");
  String? bitisGiris = stdin.readLineSync();
  int bitis = int.parse(bitisGiris!);

  // Menü
  print("\nHangi sayıya bölünenleri istiyorsunuz?");
  print("1 - 3 ile bölünenler");
  print("2 - 4 ile bölünenler");
  print("3 - 5 ile bölünenler");
  stdout.write("Seçiminiz: ");
  String? secim = stdin.readLineSync();

  int bolen = 1;

  if (secim == "1") {
    bolen = 3;
  } else if (secim == "2") {
    bolen = 4;
  } else if (secim == "3") {
    bolen = 5;
  } else {
    print("Geçersiz seçim!");
    return;
  }

  print("\n$bolen ile bölünen sayılar:");
  int i = baslangic;
  while (i <= bitis) {
    if (i % bolen == 0) {
      print(i);
    }
    i = i + 1;
  }
}