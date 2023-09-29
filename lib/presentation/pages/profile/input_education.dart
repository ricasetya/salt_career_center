// ignore_for_file: avoid_print

part of '../pages.dart';

class InputEducation extends StatefulWidget {
  const InputEducation({Key? key}) : super(key: key);

  @override
  State<InputEducation> createState() => _InputEducationState();
}

class _InputEducationState extends State<InputEducation> {
  final TextEditingController _level = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _major = TextEditingController();
  final TextEditingController _stillEducation = TextEditingController();
  final TextEditingController _startEducation = TextEditingController();
  final TextEditingController _endEducation = TextEditingController();
  final TextEditingController _description = TextEditingController();

  // bool stillEducation.text.toLowerCase() == "ya";

  bool _isEducation = true;
  // String isEducation = 'false';

  late ProfileAddEducationCubit _educationCubit;
  //bool stillEducation = false; // Inisialisasi awal sebagai false

  @override
  void initState() {
    _educationCubit =
        ProfileAddEducationCubit(ProfileAddEducationRepositoryImpl());
    // Periksa teks dan atur stillEducation sesuai dengan kondisi "ya" atau bukan
    // String stillEducation = _stillEducation.text.toLowerCase();
    // if (stillEducation == "ya") {
    //   stillEducation = true;
    // }
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
    _level.dispose();
    _name.dispose();
    _major.dispose();
    _stillEducation.dispose();
    _startEducation.dispose();
    _endEducation.dispose();
    _description.dispose();
    _educationCubit.close();
    super.dispose();
  }

  Image iconStillEducation() {
    if (_isEducation) {
      _stillEducation.text = "Ya";
      return Image.asset("assets/icons/toggle-on.png");
    } else {
      _stillEducation.text = "Tidak";
      return Image.asset("assets/icons/toggle-off.png");
    }
  }

  void stillEducationOnClick() {
    setState(() {
      _isEducation = !_isEducation;
      print("ISI still education = $_isEducation");
    });
  }

  void showMoreStage() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.4,
            minChildSize: 0.17,
            expand: false,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18, top: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _level.text = "SMA/SMK";
                              });
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "SMA/SMK",
                              style: TextStyle(
                                  fontFamily: "inter_semibold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _level.text = "D3";
                            });
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "D3",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)),
                          ),
                        )
                      ]),
                      const SizedBox(height: 24),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _level.text = "S1";
                            });
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "S1",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)),
                          ),
                        )
                      ]),
                      const SizedBox(height: 24),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _level.text = "S2";
                            });
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "S2",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              );
            }));
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
            onPressed: () => context.go('/profileblank'),
            icon: const Icon(Icons.arrow_back_ios_rounded,
                color: Color(0xff333333)),
          ),
          title: const Text('Pendidikan'),
          titleTextStyle: const TextStyle(
              fontFamily: 'inter_semibold',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff333333)),
        ),
        body: SingleChildScrollView(
          child:
              BlocConsumer<ProfileAddEducationCubit, ProfileAddEducationState>(
                  listener: (context, educationState) {
            if (educationState is ProfileAddEducationIsLoading) {
              const CircularProgressIndicator(color: Colors.red);
            } else if (educationState is ProfileAddEducationIsFailed) {
              Commons().showSnackbarError(context, 'Input Education Failed');
              print("Input Education Failed");
            } else if (educationState is ProfileAddEducationIsSuccess) {
              context.goNamed(Routes.profileblankPage);
            }
          }, builder: (context, educationState) {
            return SafeArea(
                child: Container(
              color: Colors.grey[100],
              child: Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text("Jenjang",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333)))),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                      child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _level,
                          readOnly: true,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            hintText: "Jenjang",
                            suffixIcon: IconButton(
                                onPressed: showMoreStage,
                                icon: Image.asset(
                                    "assets/icons/chevron-down.png")),
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
                      child: const Text("Nama Universitas/Institusi",
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
                          hintText: "Nama Universitas/Institusi",
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
                      child: const Text("Jurusan",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333)))),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                      child: TextFormField(
                        cursorColor: const Color(0xff333333),
                        controller: _major,
                        style: const TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                        decoration: InputDecoration(
                          hintText: "Jurusan",
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
                      child: const Text("Masih Dalam Pendidikan",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333)))),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                      child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _stillEducation,
                          readOnly: false,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: stillEducationOnClick,
                                icon: iconStillEducation()),
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
                      child: const Text("Mulai Pendidikan",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333)))),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                      child: TextFormField(
                          cursorColor: const Color(0xff333333),
                          controller: _startEducation,
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
                                  _startEducation.text =
                                      DateFormat('yyyy-MM-dd')
                                          .format(selectedDateTime);
                                  // DateTime? pickedDate = await showDatePicker(
                                  //     context: context,
                                  //     initialDate: DateTime.now(),
                                  //     firstDate: DateTime(1980),
                                  //     lastDate: DateTime(2100));
                                  // if (pickedDate != null) {
                                  //   String dateFormat = DateFormat("yyyy/MM/dd")
                                  //       .format(pickedDate);
                                  //   _startEducation.text = dateFormat;
                                  // }
                                },
                                icon: Image.asset("assets/icons/calendar.png")),
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
                      visible: (_isEducation ? false : true),
                      child: Column(children: <Widget>[
                        Container(
                            margin: const EdgeInsets.only(top: 16),
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 16),
                            child: const Text("Selesai Pendidikan",
                                style: TextStyle(
                                    fontFamily: "inter_semibold",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff333333)))),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                          child: TextFormField(
                            cursorColor: const Color(0xff333333),
                            controller: _endEducation,
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
                                    _endEducation.text =
                                        DateFormat('yyyy-MM-dd')
                                            .format(selectedDateTime);

                                    // DateTime? pickedDate = await showDatePicker(
                                    //     context: context,
                                    //     initialDate: DateTime.now(),
                                    //     firstDate: DateTime(1970),
                                    //     lastDate: DateTime(2100));
                                    // if (pickedDate != null) {
                                    //   String dateFormat =
                                    //       DateFormat("yyyy/MM/dd")
                                    //           .format(pickedDate);
                                    //   _endEducation.text = dateFormat;
                                    // }
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
                            ),
                          ),
                        )
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text("Informasi Tambahan",
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
                          hintText: "Informasi Tambahan",
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
                        keyboardType: TextInputType.multiline,
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(16, 50, 15, 21),
                      height: 60,
                      width: 375,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ProfileAddEducationCubit>(context)
                              .fetchProfileAddEducation(
                            ProfileAddEducationRequest(
                              _level.text,
                              _name.text,
                              _major.text,
                              _isEducation,
                              _startEducation.text,
                              _endEducation.text,
                              _description.text,
                            ),
                          );

                          //   ),
                          // );
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
                        ),
                      ))
                ],
              ),
            ));
          }),
        ),
      ),
    );
  }
}
