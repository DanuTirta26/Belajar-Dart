void main() {
  double totalBelanja = 1000;
  bool isMember = true;

  final double persen = hitungPersenDiskon(totalBelanja, isMember);
  print('Diskon : $persen%');

  final double potongan = hitungPotongan(totalBelanja, persen);
  print('Potongan Harga : $potongan');

  final double total = hitungTotalBayar(totalBelanja, potongan);
  print('Total Yang Perlu DIbayar :  $total');
}

double hitungPersenDiskon(double belanja, bool isMember) {
  if (belanja >= 100000) {
    double diskon = switch (isMember) {
      true => 0.15,
      false => 0.10,
    };
    return diskon;
  } else {
    return 0.0;
  }
}

double hitungPotongan(double belanja, double persen) {
  double hasil = belanja * persen;

  if (hasil > 25000) {
    return 25000.0;
  } else {
    return hasil;
  }
}

double hitungTotalBayar(double belanja, double potongan) {
  return belanja - potongan;
}
