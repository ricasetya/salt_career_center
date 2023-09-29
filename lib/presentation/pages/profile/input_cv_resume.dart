// ignore_for_file: avoid_print

part of '../pages.dart';

class InputResume extends StatefulWidget {
  const InputResume({super.key});

  @override
  State<InputResume> createState() => _InputResumeState();
}

class _InputResumeState extends State<InputResume> {
  String fileName = '';
  String pathFile = '';
  File? _file;

  //late ProfileUpdateCvResumeCubit _updateCvResumeCubit;

  @override
  void initState() {
    //_updateCvResumeCubit = UpdateCvResumeCubit(UpdateCvResumeRepositoryImpl());
    super.initState();
    fileName;
    pathFile;
    // file;
  }

  @override
  void dispose() {
    //_updateCvResumeCubit.close();
    super.dispose();
    fileName;
    pathFile;
    // file;
  }

  // Future getPdfAndUpload(int position) async {

  //   File file = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['pdf','docx'],
  //   );

  //   if(file != null) {

  //     setState(() {

  //         file1 = file; //file1 is a global variable which i created

  //     });

  //   }
  // }

  Future getPdfAndUpload() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    if (result != null) {
      setState(() {
        File? file = File(result.files.single.path ?? 'file.pdf');
        _file = file;
      });
      // if (file != null) {
      //   setState(() {
      //      file = file; //file1 is a global variable which i created
      //   });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "CV/Resume",
            style: TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff333333)),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffFFFFFF),
          leading: IconButton(
            onPressed: () => context.go('/profileblank'),
            icon: const Icon(Icons.arrow_back_ios_rounded,
                color: Color(0xff333333)),
          ),
          elevation: 0.05),
      body:
          BlocConsumer<ProfileUpdateCvResumeCubit, ProfileUpdateCvResumeState>(
              listener: (context, updateCvResumeState) {
        if (updateCvResumeState is ProfileUpdateCvResumeIsSuccess) {
          context.goNamed(Routes.profileblankPage);
        } else if (updateCvResumeState is ProfileUpdateCvResumeIsFailed) {
          print("Upload CV is Failed");
        }
      }, builder: (context, updateCvResumeState) {
        return Container(
          color: Colors.grey[100],
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 16),
                    child: Image.asset(
                      "assets/images/illus-cv-resume.png",
                      width: 200,
                      height: 200,
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 40, left: 16, right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Tambahkan CV/Resume terbaik anda",
                              style: TextStyle(
                                  fontFamily: "inter_semibold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333)),
                              textAlign: TextAlign.center),
                          SizedBox(height: 8),
                          Text("Unggah CV/Resume dengan format pdf",
                              style: TextStyle(
                                  fontFamily: "Regular",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff333333)),
                              textAlign: TextAlign.center)
                        ])),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 0, 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 12, 15, 12),
                                  child: TextButton(
                                      onPressed: () async {
                                        await getPdfAndUpload();

                                        // FilePickerResult? result =
                                        //     await FilePicker.platform.pickFiles(
                                        //         allowedExtensions: ["pdf"],
                                        //         type: FileType.custom);

                                        // if (result != null) {
                                        //   File file =
                                        //       File(result.files.single.path!);
                                        //   PlatformFile platformFile =
                                        //       result.files.first;
                                        //   setState(() {
                                        //     pathFile = platformFile.path!;
                                        //     fileName =
                                        //         "${platformFile.name}.${platformFile.extension}";
                                        //  });
                                        //} else {}
                                      },
                                      child: const Text(
                                        "Penyimpanan handphone",
                                        style: TextStyle(
                                            fontFamily: "inter_semibold",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff333333)),
                                      )),
                                ),
                                Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 12, 15, 12),
                                    child: TextButton(
                                        onPressed: () {},
                                        //=> context.go('/sudah'),
                                        child: const Text(
                                          "Google Drive",
                                          style: TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                        ))),
                                Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 12, 15, 12),
                                    child: TextButton(
                                        onPressed: () {},
                                        //=> context.go('/sudah'),
                                        child: const Text(
                                          "Dropbox",
                                          style: TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                        )))
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Unggah CV/Resume",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEA232A)),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(thickness: 2),
                Container(
                    margin: const EdgeInsets.only(
                        top: 5, left: 16, bottom: 5, right: 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("CV/Resume terunggah",
                                  style: TextStyle(
                                      fontFamily: "inter_semibold",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff333333))),
                              Text(" $fileName",
                                  style: const TextStyle(
                                      fontFamily: "Regular",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff666666))),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 110),
                            child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (context) {
                                        return Container(
                                            decoration: const BoxDecoration(
                                                color: Color(0xffFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10))),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        16, 12, 15, 12),
                                                    child: TextButton(
                                                        onPressed: () => context
                                                            .go('/sudah'),
                                                        child: const Text(
                                                          "Lihat",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "inter_semibold",
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff333333)),
                                                        )),
                                                  ),
                                                  Container(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          16, 12, 15, 12),
                                                      child: TextButton(
                                                          onPressed: () =>
                                                              context
                                                                  .go('/sudah'),
                                                          child: const Text(
                                                            "Hapus",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "inter_semibold",
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Color(
                                                                    0xff333333)),
                                                          ))),
                                                ]));
                                      });
                                },
                                icon: Image.asset(
                                  'assets/icons/more.png',
                                  width: 24,
                                  height: 24,
                                )),
                          )
                        ])),
                const Divider(thickness: 2),
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 170, 15, 21),
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<ProfileUpdateCvResumeCubit>(context)
                              .fetchProfileUpdateCvResume(
                                  ProfileCvResumeRequest(_file));
                          //updateCvResume(CvresumeRequest(file!));
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
                        )))
              ],
            ),
          ),
        );
      }),
    );
  }
}
