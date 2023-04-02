part of '../pages.dart';

class NotifikasiScreen extends StatefulWidget {
  const NotifikasiScreen({super.key});

  @override
  State<NotifikasiScreen> createState() => _NotifikasiScreenState();
}

class _NotifikasiScreenState extends State<NotifikasiScreen> {
  late int _bottomNavCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text("Notifikasi"),
        titleTextStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff333333),
        ),
        elevation: 0.05,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: const Color(0xffEA232A),
        unselectedItemColor: const Color(0xff999999),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 10,
          color: Color(0xffEA232A),
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 10,
          color: Color(0xff999999),
        ),
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        elevation: 0.05,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/beranda.png',
              color: const Color(0xff999999),
            ),
            activeIcon: Image.asset(
              'assets/icons/beranda.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/pekerjaan.png',
              color: const Color(0xff999999),
            ),
            activeIcon: Image.asset(
              'assets/icons/pekerjaan.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Pekerjaan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/kegiatan.png',
              color: const Color(0xff999999),
            ),
            activeIcon: Image.asset(
              'assets/icons/kegiatan.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Kegiatan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/notif.png',
              color: const Color(0xff999999),
            ),
            activeIcon: Image.asset(
              'assets/icons/notif.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profil.png',
              color: const Color(0xff999999),
            ),
            activeIcon: Image.asset(
              'assets/icons/profil.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
