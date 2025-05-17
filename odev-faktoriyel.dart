

void main() {
  print("=== 1'den 20'ye kadar faktöriyeli 1000'den büyük olanlar ===");

  int sayi = 1;
  while (sayi <= 20) {
    int faktoriyel = 1;
    int i = 1;

    while (i <= sayi) {
      faktoriyel = faktoriyel * i;
      i = i + 1;
    }

    if (faktoriyel > 1000) {
      print("$sayi! = $faktoriyel");
    }

    sayi = sayi + 1;
  }
}