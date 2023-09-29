// ignore_for_file: sized_box_for_whitespace, avoid_print, avoid_function_literals_in_foreach_calls, unused_local_variable

part of '../pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ListJobCubit _listJobDataCubit;
  late ProfileDataCubit _profileDataCubit;
  // late int _bottomNavCurrentIndext = 0;

  @override
  void initState() {
    super.initState();
    _listJobDataCubit = ListJobCubit(ListJobRepositoryImpl());
    _profileDataCubit = ProfileDataCubit(ProfileDataRepositoryImpl());
    BlocProvider.of<ListJobCubit>(context).fetchListJob();
    BlocProvider.of<ListsCompanyDataCubit>(context).fetchListsCompany();
    BlocProvider.of<ProfileDataCubit>(context).fetchProfileData();
  }

  @override
  void dispose() {
    _listJobDataCubit.close();
    _profileDataCubit.close();
    super.dispose();
  }

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
      body: BlocBuilder<ProfileDataCubit, ProfileDataState>(
          builder: (context, profileDataState) {
        if (profileDataState is ProfileDataIsSuccess) {
          final data = profileDataState.data;
          print(profileDataState.data);
          return BlocBuilder<ProfileDataCubit, ProfileDataState>(
            builder: (context, profileDataState) {
              if (profileDataState is ProfileDataIsSuccess) {
                return SafeArea(
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
                                  leading:
                                      profileDataState.data.urlPhoto == null
                                          ? CircleAvatar(
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage: const AssetImage(
                                                "assets/images/avatar.png",
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor: Colors.grey[200],
                                              backgroundImage: NetworkImage(
                                                profileDataState.data.urlPhoto!,
                                              ),
                                            ),
                                  title: Text("${profileDataState.data.name}"),
                                  subtitle:
                                      Text("${profileDataState.data.skill}"),
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
                        const SizedBox(
                          height: 20,
                        ),
                        buildListJobsWidget(),
                      ],
                    ),
                  ),
                );
              } else if (profileDataState is ProfileDataIsError) {
                print(profileDataState.message);
              }
              return "".text.make();
            },
          );
        }
        return "".text.make();
      }),
    );
  }

  Widget buildListJobsWidget() {
    print("build");
    return Column(
      children: [
        BlocBuilder<ListJobCubit, ListJobState>(
          builder: (context, state) {
            if (state is ListJobIsSucces) {
              print("build listview data job");
              state.data.forEach((element) {
                print(element.position);
              });
              return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
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
                  "",
                  // "Gagal menerima data pekerjaan.",
                  style: TextStyle(fontSize: 24),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
