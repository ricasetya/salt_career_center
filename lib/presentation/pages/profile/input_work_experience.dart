part of '../pages.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({super.key});

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  bool _isWorking = false;

  final TextEditingController _position = TextEditingController();
  final TextEditingController _companyName = TextEditingController();
  final TextEditingController _currentlyWork = TextEditingController();
  final TextEditingController _dateSelectedStart = TextEditingController();
  final TextEditingController _dateSelectedFinished = TextEditingController();
  final TextEditingController _workerDescription = TextEditingController();

  Image iconCurrentlyWork() {
    if (_isWorking) {
      _currentlyWork.text = "Tidak";
      return Image.asset("assets/icons/toggle-off.png");
    } else {
      _currentlyWork.text = "Ya";
      return Image.asset("assets/icons/toggle-on.png");
    }
  }

  void currentlyWorkOnClick() {
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
          leading: GestureDetector(
            onTap: () {
              context.go("/profileblank");
            },
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xff333333),
            ),
          ),
          title: const Text('Pengalaman Kerja'),
          titleTextStyle: const TextStyle(
            fontFamily: 'inter_semibold',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              color: Colors.grey[100],
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Jabatan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                        cursorColor: const Color(0xff333333),
                        controller: _position,
                        style: const TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                        decoration: InputDecoration(
                            hintText: "Jabatan",
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff333333),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: const Color(0xffFFFFFF),
                            filled: true),
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.text),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Nama Perusahaan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _companyName,
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
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Masih Berkerja",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _currentlyWork,
                      readOnly: true,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: currentlyWorkOnClick,
                          icon: iconCurrentlyWork(),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Mulai Berkerja",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _dateSelectedStart,
                      readOnly: true,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "DD/MM/YYYY",
                        suffixIcon: IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1945),
                                lastDate: DateTime(2100));
                            if (pickedDate != null) {
                              String dateFormat =
                                  DateFormat("dd/MM/yyyy").format(pickedDate);
                              _dateSelectedStart.text = dateFormat;
                            }
                          },
                          icon: Image.asset("assets/icons/calendar.png"),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: (_isWorking ? true : false),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 16),
                          child: const Text(
                            "Selesai Bekerja",
                            style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                          child: TextFormField(
                            cursorColor: const Color(0xff333333),
                            controller: _dateSelectedFinished,
                            readOnly: true,
                            style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                            decoration: InputDecoration(
                              hintText: "DD/MM/YYYY",
                              suffixIcon: IconButton(
                                onPressed: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1945),
                                      lastDate: DateTime(2100));
                                  if (pickedDate != null) {
                                    String dateFormat = DateFormat("dd/MM/yyyy")
                                        .format(pickedDate);
                                    _dateSelectedFinished.text = dateFormat;
                                  }
                                },
                                icon: Image.asset("assets/icons/calendar.png"),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff666666),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Deskripsi Pekerjaan",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 3, 15, 0),
                    child: TextFormField(
                      cursorColor: const Color(0xff333333),
                      controller: _workerDescription,
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
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 120, 15, 21),
                    child: ElevatedButton(
                      onPressed: () {
                        // BlocProvider.of<AddWorkExperienceCubit>(context).addWorkExperience(
                        //   // AddWorkExperienceRequest(
                        //   //   skillExperience: _position.text,
                        //   //   name: _companyName.text,
                        //   //   stillWorking: _currentlyWork.text,
                        //   //   startWork: _dateSelectedStart.text,
                        //   //   endWork: _dateSelectedFinished.text,
                        //   //   description: _workerDescription.text
                        //   // )
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEA232A),
                        padding: const EdgeInsets.fromLTRB(146, 12, 146, 12),
                      ),
                      child: const Text(
                        "Simpan",
                        style: TextStyle(
                          fontFamily: "inter_bold",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
