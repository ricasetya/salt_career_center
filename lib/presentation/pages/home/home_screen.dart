part of '../pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _bottomNavCurrentIndext = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shadowColor: null,
        backgroundColor: const Color(0xffFFFFFF),
        title: SizedBox(
          width: 375,
          height: 44,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextField(
              style: const TextStyle(
                fontFamily: "inter",
                fontSize: 14,
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
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20.0,
                ),
                prefixIconColor: const Color(0xff999999),
                hintText: "Digital Marketing",
                fillColor: const Color(0xffFFFFFF),
              ),
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const AssetImage(
                            "assets/images/image887.png",
                          ),
                        ),
                        title: const Text("Bima Agustian Wanaputra"),
                        subtitle: const Text("UI Design"),
                      ),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 16),
                    child: Text(
                      "Lowongan Kerja Terbaru",
                      style: TextStyle(
                        fontFamily: "inter",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  height: 125,
                  width: 360,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go("/searchpek");
                        },
                        child: Card(
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          elevation: 0,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: const AssetImage(
                                "assets/images/image4.png",
                              ),
                            ),
                            title: const Text("Accounting Manager"),
                            subtitle: const Text("Accenture southeast Asia"),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 27.0),
                            child: Text(
                              "Kebon Jeruk, Jakarta Barat",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8, left: 27.0),
                            child: Text(
                              "24 Januari 2023",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  height: 125,
                  width: 360,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go("");
                        },
                        child: Card(
                          elevation: 0,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: const AssetImage(
                                "assets/images/image5.png",
                              ),
                            ),
                            title: const Text("Administration Warranty Staff"),
                            subtitle: const Text("Kompas Gramedia"),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 27.0),
                            child: Text(
                              "Kebon Jeruk, Jakarta Barat",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8, left: 27.0),
                            child: Text(
                              "24 Januari 2023",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 0.2),
                  ),
                  height: 125,
                  width: 360,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.go("");
                        },
                        child: Card(
                          elevation: 0,
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: const AssetImage(
                                "assets/images/image6.png",
                              ),
                            ),
                            title: const Text(
                                "Web Designer/ Web Developer/ Programer"),
                            subtitle: const Text("PT Mencari Cinta Sejati"),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 27.0),
                            child: Text(
                              "Kebon Jeruk, Jakarta Barat",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 8, left: 27.0),
                            child: Text(
                              "24 Januari 2023",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: const Color(0xffEA232A),
        unselectedItemColor: const Color(0xff999999),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // selectedLabelStyle: const TextStyle(
        //   fontFamily: "inter_semibold",
        //   fontSize: 10,
        //   color: Color(0xffEA232A),
        // ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 10,
          color: Color(0xff999999),
        ),
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndext = index;
          });
        },
        currentIndex: _bottomNavCurrentIndext,
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
            icon: GestureDetector(
              onTap: () => context.go('/jobscreen'),
              child: Image.asset(
                'assets/icons/pekerjaan.png',
                color: const Color(0xff999999),
              ),
            ),
            // activeIcon: Image.asset(
            //   'assets/icons/pekerjaan.png',
            //   color: const Color(0xffEA232A),
            // ),
            label: 'Pekerjaan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/kegiatan.png',
              color: const Color(0xff999999),
            ),
            // activeIcon: Image.asset(
            //   'assets/icons/kegiatan.png',
            //   color: const Color(0xffEA232A),
            // ),
            label: 'Kegiatan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/notif.png',
              color: const Color(0xff999999),
            ),
            // activeIcon: Image.asset(
            //   'assets/icons/notif.png',
            //   color: const Color(0xffEA232A),
            // ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => context.go('/profileblank'),
              child: Image.asset(
                'assets/icons/profil.png',
                color: const Color(0xff999999),
              ),
            ),
            // activeIcon: Image.asset(
            //   'assets/icons/profil.png',
            //   color: const Color(0xffEA232A),
            // ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
