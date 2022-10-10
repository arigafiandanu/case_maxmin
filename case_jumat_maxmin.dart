import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int? nilai;
  int? dataNilai;
  List<int> data = [];

  stdout.write('Berapa jumlah list : ');
  nilai = int.tryParse(stdin.readLineSync()!) ?? 0;

  for (var i = 1; i <= nilai; i++) {
    stdout.write('Masukan angka bebas : ');
    dataNilai = int.tryParse(stdin.readLineSync()!) ?? 0;
    data.add(dataNilai);
  }
  stdout.write(data);
  var valueMax = data.reduce(max);
  var valueMin = data.reduce(min);
  stdout.write("Nilai terbesar : $valueMax\n");
  stdout.write("Nilai terkecil : $valueMin\n");
}
