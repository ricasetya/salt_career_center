// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility in the flutter_test package. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:telkom_career/main2.dart';

// abstract class Hewan {
//   String? nama;
//   int? berat;
//   int? umur;
//   Hewan({
//     this.nama,
//     this.berat,
//     this.umur,
//   });

//   void makan(int banyak) {
//     berat = berat! + banyak;
//   }

//   void pup() {}
//   void tidur() {}

//   //properti atau parameter
//   // String? jenis;
//   // String? nama;
//   // double? berat;
//   // double? energy;

//   //constructor atau inisialisasi properti
//   //jenis constructor ada 2
//   //named argument adalah
//   //Hewan(this.jenis, this.berat, this.energy, this.nama);

//   //positional argument
// //  Hewan({this.jenis, this.berat, this.energy, this.nama});

//   //methode atau behavior
//   // void makan(double banyak) {
//   //   berat = berat! + banyak;
//   // }

//   // void tidur(double lama) {
//   //   energy = energy! + lama;
//   // }

//   // void berburu(double jam) {
//   //   energy = energy! - jam;
//   // }
// }

// class Kucing extends Hewan {
//   int? jumlahkaki;
//   Kucing({
//     this.jumlahkaki,
//     String? namanya,
//     int? beratnya,
//     int? umurnya,
//   });

//   void berjalan() {}
// }

// class Burung extends Hewan {
//   int? jumlahsayap;
//   Burung({
//     this.jumlahsayap,
//     String? namanya,
//     int? beratnya,
//     int? umurnya,
//   }) : super(nama: namanya, berat: beratnya, umur: umurnya);
// }

// void main() {
//   var kucing1 = Kucing(jumlahkaki: 4);
//   kucing1.nama = "orange";
//   kucing1.berat = 12;
//   kucing1.umur = 3;
//   kucing1.makan(5);

//   var burung1 =
//       Burung(jumlahsayap: 2, beratnya: 3, namanya: 'dara', umurnya: 2);
//   burung1.makan(2);

//   print(
//       "nama= ${kucing1.nama}, berat: ${kucing1.berat}, energy: ${kucing1.umur}, jumlahkaki: ${kucing1.jumlahkaki}");
//   print("-----------space----------");
//   print(
//       "nama= ${burung1.nama}, berat: ${burung1.berat}, energy: ${burung1.umur}, jumlahsayap: ${burung1.jumlahsayap}");

//   //var ular1 = Hewan('reptil', 12, 100, 'reptil');
//   // var ular1 = Hewan(nama: 'ular', berat: 12, energy: 100, jenis: 'reptil');
//   // var buaya = Hewan(nama: 'buaya', berat: 50, energy: 100, jenis: 'reptil');
//   //var ular1 = Hewan(nama: 'ular', berat: 12, energy: 100, jenis: 'reptil');
//   //print(ular1);
// }
