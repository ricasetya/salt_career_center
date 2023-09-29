// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:telkom_career/presentation/pages/pages.dart';

class MainNavigationView extends StatefulWidget {
  final int indexScreen;
  const MainNavigationView({
    Key? key,
    required this.indexScreen,
  }) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  void initState() {
    selectedIndex = widget.indexScreen;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: const [
            HomeScreen(),
            JobsScreen(),
            SearchScreen(),
            ProfileBlank(),
            CompanyScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: const Color(0xffEA232A),
          unselectedItemColor: const Color(0xff999999),
          onTap: (newIndex) => updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
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
              label: 'Perusahaan',
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
      ),
    );
  }
}
