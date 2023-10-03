// ignore_for_file: avoid_print

part of '../pages.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  final TextEditingController _skillExperience = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _stillWorking = TextEditingController();
  final TextEditingController _startWork = TextEditingController();
  final TextEditingController _endWork = TextEditingController();
  final TextEditingController _description = TextEditingController();

  bool _isWorking = true;

  late AddWorkExperienceCubit _addWorkExperienceCubit;

  @override
  void initState() {
    _addWorkExperienceCubit =
        AddWorkExperienceCubit(AddWorkExperienceRepositoryImpl());
    super.initState();
  }

  DateTime selectedDateTime = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDateTime) {
      setState(() {
        selectedDateTime = picked;
        selectedDateTime = DateTime(
          selectedDateTime.year,
          selectedDateTime.month,
          selectedDateTime.day,
        );
      });
    }
  }

  @override
  void dispose() {
    _skillExperience.dispose();
    _name.dispose();
    _stillWorking.dispose();
    _startWork.dispose();
    _endWork.dispose();
    _description.dispose();
    _addWorkExperienceCubit.close();
    super.dispose();
  }

  Image iconStillWorking() {
    if (_isWorking) {
      _stillWorking.text = "Ya";
      return Image.asset("assets/icons/toggle-on.png");
    } else {
      _stillWorking.text = "Tidak";
      return Image.asset("assets/icons/toggle-off.png");
    }
  }

  void stillWorkingOnClick() {
    setState(() {
      _isWorking = !_isWorking;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          centerTitle: true,
          elevation: 0.5,
          leading: IconButton(
            onPressed: () {
              context.goNamed(Routes.profileblankPage);
            },
            //() => context.go('/profileblank'),
            icon: const Icon(Icons.arrow_back_ios_rounded,
                color: Color(0xff333333)),
          ),
          title: const Text('Pengalaman Kerja'),
          titleTextStyle: const TextStyle(
              fontFamily: 'inter_semibold',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff333333)),
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<AddWorkExperienceCubit, AddWorkExperienceState>(
            listener: (context, addWorkExperienceState) {
              if (addWorkExperienceState is AddWorkExperienceIsLoading) {
                const CircularProgressIndicator(color: Colors.red);
              } else if (addWorkExperienceState is AddWorkExperienceIsFailed) {
                Commons()
                    .showSnackbarError(context, 'Input Work Experience Failed');
                print("Input Work Experience Failed");
              } else if (addWorkExperienceState is AddWorkExperienceIsSuccess) {
                context.goNamed(Routes.profileblankPage);
              }
            },
            builder: (context, addWorkExperienceState) {
              return SafeArea(
                  child: Container(
                color: Colors.grey[100],
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text("Jabatan",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                        child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _skillExperience,
                          readOnly: false,
                          style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333)),
                          decoration: InputDecoration(
                              hintText: "Jabatan",
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff333333))),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              fillColor: const Color(0xffFFFFFF),
                              filled: true),
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text("Nama Perusahaan",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                        child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _name,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            hintText: "Nama Perusahaan",
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xff666666),
                            )),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                          ),
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text("Masih Berkerja",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                        child: TextFormField(
                            cursorColor: const Color(0xff333333),
                            controller: _stillWorking,
                            readOnly: true,
                            style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: stillWorkingOnClick,
                                  icon: iconStillWorking()),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff666666),
                              )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                            ))),
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text("Mulai Berkerja",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                        child: TextFormField(
                            cursorColor: const Color(0xff333333),
                            controller: _startWork,
                            readOnly: true,
                            style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                            decoration: InputDecoration(
                              hintText: "yyyy/MM/dd",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    _selectDate(context);
                                    _startWork.text = DateFormat('yyyy-MM-dd')
                                        .format(selectedDateTime);
                                  },
                                  icon:
                                      Image.asset("assets/icons/calendar.png")),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff666666),
                              )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                            ))),
                    Visibility(
                        visible: (_isWorking ? false : true),
                        child: Column(children: <Widget>[
                          Container(
                              margin: const EdgeInsets.only(top: 16),
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(left: 16),
                              child: const Text("Selesai Bekerja",
                                  style: TextStyle(
                                      fontFamily: "inter_semibold",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff333333)))),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                            child: TextFormField(
                              cursorColor: const Color(0xff333333),
                              controller: _endWork,
                              readOnly: true,
                              style: const TextStyle(
                                fontFamily: "inter_regular",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff333333),
                              ),
                              decoration: InputDecoration(
                                hintText: "yyyy/MM/dd",
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _selectDate(context);
                                      _endWork.text = DateFormat('yyyy-MM-dd')
                                          .format(selectedDateTime);
                                    },
                                    icon: Image.asset(
                                        "assets/icons/calendar.png")),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(0xff666666),
                                )),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                fillColor: const Color(0xffFFFFFF),
                                filled: true,
                              ),
                            ),
                          )
                        ])),
                    Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left: 16),
                        child: const Text("Deskripsi Pekerjaan",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)))),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                        child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _description,
                          maxLines: 7,
                          minLines: 5,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            hintText: "Deskripsi Pekerjaan",
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xff666666),
                            )),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true,
                          ),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.multiline,
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(16, 130, 15, 21),
                        height: 60,
                        width: 375,
                        child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<AddWorkExperienceCubit>(context)
                                  .addWorkExperience(AddWorkExperienceRequest(
                                _skillExperience.text,
                                _name.text,
                                _isWorking,
                                _startWork.text,
                                _endWork.text,
                                _description.text,
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffEA232A)),
                            child: const Text(
                              "Simpan",
                              style: TextStyle(
                                fontFamily: "inter_bold",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF),
                              ),
                            )))
                  ],
                ),
              ));
            },
          ),
        ),
      ),
    );
  }
}
