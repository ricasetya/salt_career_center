part of '../pages.dart';

class ListsJobs extends StatefulWidget {
  const ListsJobs({super.key});

  @override
  State<ListsJobs> createState() => _ListsJobs();
}

class _ListsJobs extends State<ListsJobs> {
  late int _bottomNavCurrentIndex = 0;
  late ListsJobsCubit listsJobsCubit;

  @override
  void initState() {
    super.initState();
    listsJobsCubit = ListsJobsCubit(ListsJobsRepositoryImpl());
  }

  @override
  void dispose() {
    listsJobsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: listsJobsCubit,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
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
          body: BlocBuilder<ListsJobsCubit, ListsJobsState>(
              builder: (context, state) {
            if (state is ListsJobsIsEmpty) {
              print("LIST JOBS : EMPTY");
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: const Text(
                  "Tidak ada artikel saat ini",
                  style: TextStyle(fontSize: 24),
                ),
              );
            } else if (state is ListsJobsIsLoading) {
              print("LISTSJOBS : LOADED");
              return SafeArea(
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image4.png"),
                                    ),
                                    title: Text("Accounting Officer"),
                                    subtitle: Text("Accenture southeast Asia"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image5.png"),
                                    ),
                                    title:
                                        Text("Administration Warranty Staff"),
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
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image6.png"),
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
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image7.png"),
                                    ),
                                    title:
                                        Text("Internal Communications Intern"),
                                    subtitle: Text("Pintu"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image8.png"),
                                    ),
                                    title: Text(
                                        "Web Designer/ Web Developer/ Programmer"),
                                    subtitle: Text("ConnectedLife Health"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image888.png"),
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
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image892.png"),
                                    ),
                                    title:
                                        Text("Administration Warranty Staff"),
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
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image891.png"),
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
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image890.png"),
                                    ),
                                    title:
                                        Text("Internal Communications Intern"),
                                    subtitle: Text("Pintu"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
                                      backgroundImage: AssetImage(
                                          "assets/images/image889.png"),
                                    ),
                                    title: Text(
                                        "Web Designer/ Web Developer/ Programmer"),
                                    subtitle: Text("ConnectedLife Health"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Kebon Jeruk, Jakarta Barat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "inter_semibold",
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
                                      "24 Januari 2023",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
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
              );
            } else {
              print("ARTICLE : ELSE");
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: const Text(
                  "Gagal menerima data artikel",
                  style: TextStyle(fontSize: 24),
                ),
              );
            }
          }),
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
      ),
    );
  }

  Widget buildListJobsWidget() {
    print("build");
    return BlocBuilder<ListsJobsCubit, ListsJobsState>(
        builder: (context, state) {
      if (state is ListsJobsIsSucces) {
        print("build listview");
        state.data.forEach((element) {
          print(element.position);
        });
        return ListView.builder(
            shrinkWrap: true,
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final job = state.data[index];
              return Text(job.position ?? "-");
            });
      } else if (state is ListsJobsIsLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xff5A5A5A),
            backgroundColor: Color.fromARGB(1, 90, 90, 90),
          ),
        );
      } else {
        print("error");
        return const Text("Gagal");
      }
    });
  }
}
