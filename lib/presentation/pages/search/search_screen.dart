// ignore_for_file: unused_local_variable, avoid_print, avoid_function_literals_in_foreach_calls

part of '../pages.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late ListsCompanyDataCubit _listCompanyDataCubit;
  late ListJobCubit _listJobDataCubit;

  @override
  void initState() {
    super.initState();
    _listCompanyDataCubit =
        ListsCompanyDataCubit(ListsCompanyDataRepositoryImpl());
    _listJobDataCubit = ListJobCubit(ListJobRepositoryImpl());
  }

  @override
  void dispose() {
    _listCompanyDataCubit.close();
    _listJobDataCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            leading: GestureDetector(
              onTap: () {
                context.go("/jobscreen");
              },
              child: Image.asset('assets/icons/back.png',
                  height: 18.67, width: 10),
            ),
            flexibleSpace: Container(
              margin: const EdgeInsets.fromLTRB(50, 30, 15, 8),
              child: TextFormField(
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'inter_regular',
                  fontSize: 16,
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w400,
                  backgroundColor: Color(0xffE6E6E6),
                ),
                cursorColor: const Color(0xff333333),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Image.asset('assets/icons/search.png'),
                    fillColor: const Color.fromRGBO(230, 230, 230, 1),
                    filled: true),
              ),
            ),
            bottom: const TabBar(
              indicatorColor: Color(0xffFFFFFF),
              labelColor: Color.fromARGB(255, 223, 15, 15),
              unselectedLabelColor: Color(0xff999999),
              labelStyle: TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  text: "Pekerjaan",
                ),
                Tab(text: "Perusahaan"),
              ],
            ),
          ),
          backgroundColor: Colors.grey[200],
          body: TabBarView(children: [
            buildListJobsWidget(),
            buildListCompanyWidget(),
          ])),
    );
  }

  Widget buildListCompanyWidget() {
    print("build");
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<ListsCompanyDataCubit, ListsCompanyDataState>(
            builder: (context, state) {
              if (state is ListsCompanyDataIsSucces) {
                print("build listview data company");
                state.data.forEach((element) {
                  print(element.name);
                });
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    final listcompany = state.data[index];
                    return Column(
                      children: [
                        Card(
                          margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          color: const Color(0xffFFFFFF),
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  print(" id Company ${listcompany.id}");
                                  context.goNamed(
                                    Routes.companyscreenPage,
                                    extra: listcompany.name,
                                  );
                                },
                                leading: CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage:
                                      NetworkImage(listcompany.urlLogo),
                                ),
                                title: Text(
                                  listcompany.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "inter_semibold",
                                    fontSize: 14,
                                    color: Color(0xff333333),
                                  ),
                                ),
                                subtitle: Row(
                                  children: [
                                    Text(
                                      listcompany.typeCompany,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
                                        fontSize: 12,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                    const Text(
                                      " • ",
                                    ),
                                    Text(
                                      listcompany.address,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "inter_regular",
                                        fontSize: 12,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              } else if (state is ListsCompanyDataIsLoading) {
                print("LIST : LOADING");
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 4,
                    color: Color(0xff5A5A5A),
                    backgroundColor: Color.fromARGB(1, 90, 90, 90),
                  ),
                );
              } else {
                print("LIST : ELSE");
                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                  child: const Text(
                    "Gagal menerima data Perusahaan.",
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildListJobsWidget() {
    print("build");
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<ListJobCubit, ListJobState>(
            builder: (context, state) {
              if (state is ListJobIsSucces) {
                print("build listview data job");
                state.data.forEach((element) {
                  print(element.position);
                });
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final listjob = state.data[index];
                      return Column(
                        children: [
                          Card(
                            margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            color: const Color(0xffFFFFFF),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    backgroundImage: NetworkImage(listjob.logo),
                                  ),
                                  title: Text(
                                    listjob.position,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "inter_semibold",
                                      fontSize: 14,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                  subtitle: Text(
                                    listjob.company,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "inter_regular",
                                      fontSize: 12,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text(
                                        listjob.address,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "inter_semibold",
                                          fontSize: 12,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 16),
                                      child: Text(
                                        listjob.createdAt,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "inter_regular",
                                          fontSize: 10,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    });
              } else if (state is ListJobIsLoading) {
                print("LIST : LOADING");
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff5A5A5A),
                        backgroundColor: Color.fromARGB(1, 90, 90, 90),
                      ),
                    ),
                  ],
                );
              } else {
                print("LIST : ELSE");
                return Container(
                  margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                  child: const Text(
                    "Gagal menerima data pekerjaan.",
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
