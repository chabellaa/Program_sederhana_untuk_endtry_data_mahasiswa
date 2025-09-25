import 'dart:io';

class Mahasiswa {
  String nim;
  String nama;
  String prodi;
  String angkatan;

  Mahasiswa(this.nim, this.nama, this.prodi, this.angkatan);
}

void main() {
  List<Mahasiswa> mahasiswaList = [];

  for (int i = 0; i < 10; i++) {
    print("\nMasukkan data mahasiswa ke-${i + 1}");
    stdout.write("NIM      : ");
    String nim = stdin.readLineSync()!;
    stdout.write("Nama     : ");
    String nama = stdin.readLineSync()!;
    stdout.write("Prodi    : ");
    String prodi = stdin.readLineSync()!;
    stdout.write("Angkatan : ");
    String angkatan = stdin.readLineSync()!;

    mahasiswaList.add(Mahasiswa(nim, nama, prodi, angkatan));
  }

  print("\n=== Pencarian Data Mahasiswa ===");
  stdout.write("Masukkan NIM atau Nama mahasiswa yang dicari: ");
  String keyword = stdin.readLineSync()!;

  bool found = false;
  for (var mhs in mahasiswaList) {
    if (mhs.nim == keyword || mhs.nama.toLowerCase() == keyword.toLowerCase()) {
      print("\nData Mahasiswa Ditemukan:");
      print("NIM      : ${mhs.nim}");
      print("Nama     : ${mhs.nama}");
      print("Prodi    : ${mhs.prodi}");
      print("Angkatan : ${mhs.angkatan}");
      found = true;
      break;
    }
  }

  if (!found) {
    print("\nData mahasiswa tidak ditemukan.");
  }
}
