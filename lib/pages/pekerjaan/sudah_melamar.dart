part of '../pages.dart';

class SudahMelamar extends StatefulWidget {
  const SudahMelamar({super.key});

  @override
  State<SudahMelamar> createState() => _SudahMelamar();
}

class _SudahMelamar extends State<SudahMelamar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: SizedBox(
            width: 375,
            height: 44,
            child: TextField(
              style: const TextStyle(
                fontFamily: "inter_regular",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff999999),
              ),
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffE6E6E6),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                    color: Color(0xffE6E6E6),
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: const Color(0xff999999),
                hintText: "Digital Marketing",
                fillColor: const Color(0xffFFFFFF),
              ),
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xffFFFFFF),
            labelColor: Color(0xffEA232A),
            unselectedLabelColor: Color(0xff333333),
            labelStyle: TextStyle(
              fontFamily: "inter_semibold",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            tabs: <Widget>[
              Tab(text: 'Daftar Pekerjaan'),
              Tab(text: 'Sudah Melamar'),
            ],
          ),
        ),
        body: Container(),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 20,
            selectedLabelStyle: const TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 10,
                color: Color(0xffEA232A)),
            unselectedLabelStyle: const TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 10,
                color: Color(0xff999999)),
            selectedItemColor: const Color(0xffEA232A),
            unselectedItemColor: const Color(0xff999999),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  label: 'Beranda',
                  icon: Image.asset('assets/icons/beranda.png')),
              BottomNavigationBarItem(
                  label: 'Pekerjaan',
                  icon: Image.asset('assets/icons/pekerjaan.png')),
              BottomNavigationBarItem(
                  label: 'Pesan', icon: Image.asset('assets/icons/pesan.png')),
              BottomNavigationBarItem(
                  label: 'Notifikasi',
                  icon: Image.asset('assets/icons/notif.png')),
              BottomNavigationBarItem(
                  label: 'Profil',
                  icon: Image.asset('assets/icons/profil.png')),
            ],
          ),
        ),
      ),
    );
  }
}
