// ignore_for_file: avoid_print, avoid_function_literals_in_foreach_calls, unnecessary_string_interpolations

part of '../pages.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  late ListJobCubit _listJobCubit;
  late int _bottomNavCurrentIndext = 0;

  @override
  void initState() {
    super.initState();
    _listJobCubit = ListJobCubit(ListJobRepositoryImpl());
  }

  @override
  void dispose() {
    _listJobCubit.close();
    _bottomNavCurrentIndext;
    super.dispose();
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
          bottom: const TabBar(
            indicatorColor: Color(0xffFFFFFF),
            labelColor: Color(0xffEA232A),
            unselectedLabelColor: Color(0xff999999),
            labelStyle: TextStyle(
              fontFamily: "inter_semibold",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(text: " Pekerjaan"),
              Tab(text: "Sudah Melamar"),
            ],
          ),
        ),
        backgroundColor: Colors.grey[200],
        body: TabBarView(
          children: [buildJobWidget(), buildJobApplyedWidget()],
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
              _bottomNavCurrentIndext = index;
            });
          },
          currentIndex: _bottomNavCurrentIndext,
          elevation: 0.05,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => context.go('/homescreen'),
                child: Image.asset(
                  'assets/icons/beranda.png',
                  color: const Color(0xff999999),
                ),
              ),
              // activeIcon: Image.asset(
              //   'assets/icons/beranda.png',
              //   color: const Color(0xffEA232A),
              // ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/pekerjaan.png',
                color: const Color(0xffEA232A),
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
      ),
    );
  }

  Widget buildJobWidget() {
    print("build");
    return SingleChildScrollView(
      child: Column(children: [
        BlocBuilder<ListJobCubit, ListJobState>(
          builder: (context, pekerjaanState) {
            if (pekerjaanState is ListJobIsSucces) {
              print("build ListJob");
              pekerjaanState.data.forEach((element) {
                print(element.company);
              });
              return ListView.builder(
                shrinkWrap: true,
                itemCount: pekerjaanState.data.length,
                itemBuilder: (context, index) {
                  final listData = pekerjaanState.data[index];

                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 16, left: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black, width: 0.2),
                            ),
                            height: 125,
                            width: 360,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    context.go("/searchscreen");
                                  },
                                  child: Card(
                                    elevation: 0,
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        backgroundImage: NetworkImage(
                                          "${listData.logo}",
                                        ),
                                      ),
                                      title: Text(
                                        "${listData.position}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      subtitle: Text("${listData.company}"),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 27.0),
                                      child: Text(
                                        "${listData.address}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 27.0),
                                      child: Text(
                                        "${listData.createdAt}",
                                        style: const TextStyle(
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
                  );
                },
              );
            } else if (ListJobState is ListJobIsLoading) {
              return const CircularProgressIndicator().centered();
            }
            return Container(
              child: "".text.makeCentered(),
            );
          },
        ),
      ]),
    );
  }

  Widget buildJobApplyedWidget() {
    print("build");
    return SingleChildScrollView(
      child: Column(children: [
        BlocBuilder<ListJobCubit, ListJobState>(
          builder: (context, pekerjaanState) {
            if (pekerjaanState is ListJobIsSucces) {
              print("build ListJob");
              pekerjaanState.data.forEach((element) {
                print(element.company);
              });
              return ListView.builder(
                shrinkWrap: true,
                itemCount: pekerjaanState.data.length,
                itemBuilder: (context, index) {
                  final listData = pekerjaanState.data[index];

                  return Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 16, left: 15),
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
                                  context.go("/searchscreen");
                                },
                                child: Card(
                                  elevation: 0,
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                      backgroundImage: NetworkImage(
                                        "${listData.logo}",
                                        //"${"${BaseConfig.BASE_IMAGE}/${listData.logo}"}",
                                      ),
                                    ),
                                    title: Text(
                                      "${listData.position}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text("${listData.company}"),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 27.0),
                                    child: Text(
                                      "${listData.address}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, left: 27.0),
                                    child: Text(
                                      "${listData.createdAt}",
                                      style: const TextStyle(
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
                  );
                },
              );
            } else if (ListJobState is ListJobIsLoading) {
              return const CircularProgressIndicator().centered();
            }
            return Container(
              child: "".text.makeCentered(),
            );
          },
        ),
      ]),
    );
  }
}
