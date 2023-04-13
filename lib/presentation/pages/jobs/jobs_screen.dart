part of '../pages.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  late ListJobCubit _listJobCubit;

  @override
  void initState() {
    super.initState();
    _listJobCubit = ListJobCubit(ListJobRepositoryImpl());
  }

  @override
  void dispose() {
    _listJobCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          title: SizedBox(
            width: 375,
            height: 44,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextField(
                style: TextStyle(
                  fontFamily: "inter",
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
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
        body: BlocConsumer<ListJobCubit, ListJobState>(
          listener: (context, pekerjaanState) {
            if (pekerjaanState is ListJobIsError) {
              Commons().showSnackbarError(context, pekerjaanState.message);
            }
          },
          builder: (context, pekerjaanState) {
            if (pekerjaanState is ListJobIsSucces) {
              return ListView.builder(
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
                                    context.go("/peru");
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
                                        style: TextStyle(
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
                                        "${listData.createdDate}",
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
                  );
                },
              );
            } else if (ListJobState is ListJobIsLoading) {
              return CircularProgressIndicator().centered();
            }
            return Container(
              child: "Bloc tidak kepanggil".text.makeCentered(),
            );
          },
        ),
      ),
    );
  }
}
