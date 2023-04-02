part of '../pages.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text('Detail Pekerjaan'),
        titleTextStyle: const TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333)),
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Color(0xff333333),
        ),
        elevation: 0.05,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/image5.png"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Administration Warranty Staff",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text(
                          "KOMPAS GRAMEDIA",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Kebon Jeruk, Jakarta Barat",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "Melamar 24 Jan 2023 | Lamaran sedang diproses",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 32),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Kualifikasi",
                    style: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 8),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        children: const <Widget>[
                          Text('• Gelar Sarjana (S1) di bidang Akutansi'),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text('• Pengalaman minimal 2 tahun di posisi')
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text('  Accounting'),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text('• Pengetahuan yang kuat tentang pembukuan dan'),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                              '  prinsip akutansi, hukum dan peraturan (PSAK)'),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("• Pengalaman bekerja di Perusahaan Retail"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  atau FMCG menjadi nilai tambah"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("• Pemikiran analitis yang kuat dan kemampuan"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  pemecahan masalah"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("• Berorientasi pada hasil dan memiliki mindset")
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  berkembang"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("• Baik dengan detail, tajam, mampu bekerja"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  di bawah tekanan & bekerja dalam tim"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("• Keahlian komputer yang kuat, khususnya MS"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  Excel (mengelola spreadsheet, membuat"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  bagan, dan menggunakan rumus tingkat"),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text("  lanjut)"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
