part of '../pages.dart';

class SudahMelamar extends StatefulWidget {
  const SudahMelamar({super.key});

  @override
  State<SudahMelamar> createState() => _SudahMelamarState();
}

class _SudahMelamarState extends State<SudahMelamar> {
  late int _bottomNavCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

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
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextField(
                style: const TextStyle(
                  fontFamily: "inter_regular",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff666666),
                ),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xffFFFFFF),
            labelColor: Color(0xffEA232A),
            unselectedLabelColor: Color(0xff666666),
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Container(
                    height: 125,
                    width: 360,
                    color: const Color(0xffFFFFFF),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Card(
                            elevation: 0,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE6E6E6),
                                backgroundImage:
                                    AssetImage("assets/images/image5.png"),
                              ),
                              title: Text("Administration Warranty Staff"),
                              subtitle: Text("KOMPAS GRAMEDIA"),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                "Lamaran sedang diproses",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 12,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 16),
                              child: Text(
                                "Melamar pada 24 Jan 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 10,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Container(
                    height: 125,
                    width: 360,
                    color: const Color(0xffFFFFFF),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Card(
                            elevation: 0,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE6E6E6),
                                backgroundImage:
                                    AssetImage("assets/images/image4.png"),
                              ),
                              title: Text("Accounting Officer"),
                              subtitle: Text("Accenture Southeast Asia"),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                "Lamaran sedang diproses",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 12,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 16),
                              child: Text(
                                "Melamar pada 24 Jan 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 10,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Container(
                    height: 125,
                    width: 360,
                    color: const Color(0xffFFFFFF),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Card(
                            elevation: 0,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffE6E6E6),
                                backgroundImage:
                                    AssetImage("assets/images/image6.png"),
                              ),
                              title: Text(
                                  "Web Designer/ Web Developer/ Programmer"),
                              subtitle: Text("PT Mencari Cinta Sejati"),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                "Lamaran anda tidak dilanjutkan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 12,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 8, left: 16),
                              child: Text(
                                "Melamar pada 24 Jan 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "inter_regular",
                                  fontSize: 10,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 10,
          unselectedFontSize: 10,
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
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/beranda.png',
                color: const Color(0xffEA232A),
              ),
              icon: Image.asset(
                'assets/icons/beranda.png',
                color: const Color(0xff999999),
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              label: 'Pekerjaan',
              activeIcon: Image.asset(
                'assets/icons/pekerjaan.png',
                color: const Color(0xffEA232A),
              ),
              icon: Image.asset(
                'assets/icons/pekerjaan.png',
                color: const Color(0xff999999),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Kegiatan',
              activeIcon: Image.asset(
                'assets/icons/kegiatan.png',
                color: const Color(0xffEA232A),
              ),
              icon: Image.asset(
                'assets/icons/kegiatan.png',
                color: const Color(0xff999999),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notifikasi',
              activeIcon: Image.asset(
                'assets/icons/notif.png',
                color: const Color(0xffEA232A),
              ),
              icon: Image.asset(
                'assets/icons/notif.png',
                color: const Color(0xff999999),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profil',
              activeIcon: Image.asset(
                'assets/icons/profil.png',
                color: const Color(0xffEA232A),
              ),
              icon: Image.asset(
                'assets/icons/profil.png',
                color: const Color(0xff999999),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
