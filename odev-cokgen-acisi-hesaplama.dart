import 'dart:io';

void main() {
  print("DÜZGÜN ÇOKGEN PROGRAMI");

  // Kenar sayısını al
  stdout.write("Lütfen düzgün çokgenin kenar sayısını giriniz: ");
  String? kenarGiris = stdin.readLineSync();
  int kenarSayisi = int.parse(kenarGiris!);

  // Menü
  print("\nHangi işlemi yapmak istiyorsunuz?");
  print("1 - İç açı toplamı");
  print("2 - Bir iç açı");
  print("3 - Bir dış açı");
  stdout.write("Seçiminiz: ");
  String? secim = stdin.readLineSync();

  // Hesaplama
  if (secim == "1") {
    int icAciToplami = (kenarSayisi - 2) * 180;
    print("İç açıların toplamı: $icAciToplami derece");
  } else if (secim == "2") {
    double birIcAci = ((kenarSayisi - 2) * 180) / kenarSayisi;
    print("Bir iç açı: ${birIcAci.toStringAsFixed(2)} derece");
  } else if (secim == "3") {
    double birDisAci = 360 / kenarSayisi;
    print("Bir dış açı: ${birDisAci.toStringAsFixed(2)} derece");
  } else {
    print("Geçersiz seçim yaptınız.");
  }
}
