part of '../pages.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  PickedFile? _imageFile;
  // late ListsJobsCubit _listsJobsCubit;
  late CompanyDataCubit _companyDataCubit;

  @override
  void initState() {
    super.initState();
    _companyDataCubit = CompanyDataCubit(CompanyDataRepositoryImpl());
  }

  @override
  void dispose() {
    _companyDataCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    _companyDataCubit
        .fetchCompanyData(AuthenticationHeaderRequest("accesToken"));

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
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.274,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            child:
                                Image.asset('assets/images/imagesuperindo.png'),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: const Text(
                              "PT Lion Super Indo",
                              style: TextStyle(
                                fontFamily: 'inter_semibold',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "Retail • Kebon Jeruk, Jakarta Barat",
                              style: TextStyle(
                                fontFamily: 'inter_regular',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const DefaultTabController(
                              length: 2,
                              child: TabBar(
                                indicator: BoxDecoration(
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
                                indicatorColor: Color(0xffFFFFFF),
                                labelColor: Color(0xffEA232A),
                                unselectedLabelColor: Color(0xff666666),
                                indicatorPadding: EdgeInsets.all(0),
                                labelStyle: TextStyle(
                                  fontFamily: "inter_semibold",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                tabs: <Widget>[
                                  Tab(text: 'Tentang'),
                                  Tab(text: 'Pekerjaan'),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<ListsJobsCubit, ListsJobsState>(
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
                              return Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(
                                        left: 16, right: 15),
                                    child: Card(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            leading: CircleAvatar(
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage:
                                                  NetworkImage(job.logo ?? ""),
                                            ),
                                            title: Text(
                                              job.position ?? "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "inter_semibold",
                                                fontSize: 14,
                                                color: Color(0xff333333),
                                              ),
                                            ),
                                            subtitle: Text(
                                              job.company ?? "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "inter_regular",
                                                fontSize: 12,
                                                color: Color(0xff333333),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: Text(
                                                  job.address ?? "",
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily:
                                                        "inter_semibold",
                                                    fontSize: 12,
                                                    color: Color(0xff333333),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16, top: 4),
                                                child: Text(
                                                  job.createdDate ?? "",
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
                      } else if (state is ListsJobsIsLoading) {
                        print("ARTICLE : LOADING");
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
                  ),
                ],
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
