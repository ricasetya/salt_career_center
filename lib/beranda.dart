import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 56,
          backgroundColor: const Color(0xffffffff),
          elevation: 4,
        ),
        body: Container(),
        bottomNavigationBar: Row(
          children: [
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: 'Beranda',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: 'Pekerjaan',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: 'Pesan',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: 'Notifikasi',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: 'Profil',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
