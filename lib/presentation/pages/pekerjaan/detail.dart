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
        backgroundColor: const Color(0xffFFFFFF),
        title: const Center(
          child: Text(
            'Detail Pekerjaan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'inter_semibold',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff333333),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: const <Widget>[
                Icon(Icons.arrow_right_rounded),
                Text('Gelar Sarjana (S1) di bidang Akuntansi')
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.arrow_right_rounded),
                Text('Pengalaman minimal 2 tahun di posisi Accounting')
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.arrow_right_rounded),
                Text(
                    'Pengetahuan yang kuat tentang pembukuan dan prinsip akuntansi, hukum dan peraturan (PSAK)')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
