// ignore_for_file: unused_field, unused_local_variable, avoid_print, avoid_unnecessary_containers, unnecessary_string_interpolations

part of '../pages.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen>
    with SingleTickerProviderStateMixin {
  PickedFile? _imageFile;
  // late ListsJobsCubit _listsJobsCubit;
  late CompanyDataCubit _companyDataCubit;
  bool isOpen = true;
  late TabController tabController;
  late AboutCompanyDataCubit _aboutCompanyDataCubit;
  late JobsCompanyDataCubit _jobsCompanyDataCubit;

  @override
  void initState() {
    _companyDataCubit = CompanyDataCubit(CompanyDataRepositoryImpl());
    _aboutCompanyDataCubit = AboutCompanyDataCubit(CompanyDataRepositoryImpl());
    _jobsCompanyDataCubit = JobsCompanyDataCubit(CompanyDataRepositoryImpl());
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _companyDataCubit.close();
    _aboutCompanyDataCubit.close();
    _jobsCompanyDataCubit.close();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: AppBar(
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading: GestureDetector(
              onTap: () => context.go('/searchscreen'),
              child: Image.asset('assets/icons/back.png',
                  height: 18.67, width: 10)),
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
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            BlocBuilder<CompanyDataCubit, CompanyDataState>(
              builder: (context, state) {
                if (state is CompanyDataIsSucces) {
                  print(state.data);
                  // print("build Data Company");
                  // state.data.forEach((element) {
                  //   print(element.logo);
                  // });
                }
                //             final companydata = state.data;

                return BlocBuilder<CompanyDataCubit, CompanyDataState>(
                  builder: (context, state) {
                    if (state is CompanyDataIsSucces) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage:
                                      NetworkImage("${state.data.urlLogo}")),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: Text(
                                "${state.data.name}",
                                style: const TextStyle(
                                  fontFamily: 'inter_semibold',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "${state.data.typeCompany}",
                                style: const TextStyle(
                                  fontFamily: 'inter_regular',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff333333),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TabBar(
                              controller: tabController,
                              indicator: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(204, 204, 204, 1),
                                  ),
                                  left: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: Color.fromRGBO(204, 204, 204, 1),
                                  ),
                                ),
                              ),
                              indicatorColor: const Color(0xffFFFFFF),
                              labelColor: const Color(0xffEA232A),
                              unselectedLabelColor: const Color(0xff666666),
                              indicatorPadding: const EdgeInsets.all(0),
                              labelStyle: const TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              tabs: const <Widget>[
                                Tab(text: 'Tentang'),
                                Tab(text: 'Pekerjaan'),
                              ],
                            ),
                          ],
                        ),
                      );
                    } else if (state is CompanyDataIsError) {
                      print(state.message);
                    }
                    return "".text.make();
                  },
                );
              },
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: [
                buildAboutCompanyDataWidget(),
                buildCompanyDataWidget()
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget buildCompanyDataWidget() {
    print("build");
    return BlocBuilder<CompanyDataCubit, CompanyDataState>(
      builder: (context, state) {
        if (state is CompanyDataIsSucces) {
          print("build listview");
          // state.data.forEach((element) {
          //   print(element.position);
          // });
          final listCompany = state.data.jobs;

          return ListView.builder(
              shrinkWrap: true,
              itemCount: listCompany!.length,
              itemBuilder: (context, index) {
                final jobs = listCompany[index];
                return Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(left: 16, right: 15),
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage:
                                    NetworkImage("${state.data.urlLogo}"),
                              ),
                              title: Text(
                                "${jobs.position}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "inter_semibold",
                                  fontSize: 14,
                                  color: Color(0xff333333),
                                ),
                              ),
                              subtitle: Text(
                                "${jobs.company}",
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
                                    "${jobs.address}",
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
                                  padding:
                                      const EdgeInsets.only(left: 16, top: 4),
                                  child: Text(
                                    "${jobs.createdAt}",
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
                    ),
                  ],
                );
              });
        } else if (state is ListJobIsLoading) {
          print("ARTICLE : LOADING list job");
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xff5A5A5A),
              backgroundColor: Color.fromARGB(1, 90, 90, 90),
            ),
          );
        } else {
          print("ARTICLE : ELSE");
          return Container(
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
            child: const Text(
              "Gagal menerima data pekerjaan.",
              style: TextStyle(fontSize: 24),
            ),
          );
        }
      },
    );
  }

  Widget buildAboutCompanyDataWidget() {
    print("build");
    return BlocBuilder<CompanyDataCubit, CompanyDataState>(
      builder: (context, state) {
        if (state is CompanyDataIsSucces) {
          print("build listview");
          final aboutCompany = state.data.about;
          return Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Profil",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  // "${aboutCompany!.profile}".text.make(),
                  Text(
                    "${aboutCompany!.profile}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "inter_regular",
                      fontSize: 12,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Website",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${aboutCompany.website}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      color: Color(0xffEA232A),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Lokasi",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      color: Color(0xff333333),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${aboutCompany.location}",
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
          );
        } else if (state is CompanyDataIsLoading) {
          print("ARTICLE : LOADING abiut");
          return const Center(
            child: CircularProgressIndicator(
              color: Color(0xff5A5A5A),
              backgroundColor: Color.fromARGB(1, 90, 90, 90),
            ),
          );
        } else if (state is CompanyDataIsError) {
          // print(state.message);
          return Container(
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
            child: Text(
              "${state.message}",
              style: const TextStyle(fontSize: 24),
            ),
          );
        }
        return 0.heightBox;
      },
    );
  }
}
