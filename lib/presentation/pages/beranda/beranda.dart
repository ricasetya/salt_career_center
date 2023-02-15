part of '../pages.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  late int _bottomNavCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: TextField(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Card(
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
              );
            },
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
            label: 'Pesan',
            activeIcon: Image.asset(
              'assets/icons/pesan.png',
              color: const Color(0xffEA232A),
            ),
            icon: Image.asset(
              'assets/icons/pesan.png',
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
    );
  }
}
