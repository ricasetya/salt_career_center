// ignore_for_file: avoid_print

part of '../pages.dart';

class InputPortfolio extends StatefulWidget {
  const InputPortfolio({super.key});

  @override
  State<InputPortfolio> createState() => _InputPortfolioState();
}

class _InputPortfolioState extends State<InputPortfolio> {
  String fileName = '';
  String pathFile = '';
  File? _fileportfolio;

  late UpdatePortfolioCubit _updatePortfolioCubit;

  @override
  void initState() {
    _updatePortfolioCubit =
        UpdatePortfolioCubit(UpdatePortfolioRepositoryImpl());
    super.initState();
    fileName;
    pathFile;
    _fileportfolio;
  }

  @override
  void dispose() {
    _updatePortfolioCubit.close();
    super.dispose();
    fileName;
    pathFile;
    _fileportfolio;
  }

  void showMoreUpload() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                child: TextButton(
                    onPressed: () async {
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles(
                              allowedExtensions: ["pdf"],
                              type: FileType.custom);

                      if (result != null) {
                        setState(() {
                          File? file =
                              File(result.files.single.path ?? 'file.pdf');
                          _fileportfolio = file;
                        });
                      }
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
                  padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                  child: TextButton(
                      onPressed: () => context.go('/sudah'),
                      child: const Text(
                        "Google Drive",
                        style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff333333)),
                      ))),
              Container(
                  padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                  child: TextButton(
                      onPressed: () => context.go('/sudah'),
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
  }

  void showMore() {
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
                      padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                      child: TextButton(
                          onPressed: () => context.go('/sudah'),
                          child: const Text(
                            "Lihat",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff333333)),
                          )),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                        child: TextButton(
                            onPressed: () => context.go('/sudah'),
                            child: const Text(
                              "Hapus",
                              style: TextStyle(
                                  fontFamily: "inter_semibold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333)),
                            ))),
                  ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Portfolio terunggah",
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
      body: BlocConsumer<UpdatePortfolioCubit, UpdatePortfolioState>(
          listener: (context, updatePortfolioState) {
        if (updatePortfolioState is UpdatePortfolioIsSuccess) {
          context.goNamed(Routes.profileblankPage);
        } else if (updatePortfolioState is UpdatePortfolioIsFailed) {
          print("Upload Portfolio is Failed");
        }
      }, builder: (context, updatePortfolioState) {
        return Container(
          color: Colors.grey[100],
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 40, bottom: 16),
                    child: Image.asset(
                      "assets/images/illus-portfolio.png",
                      width: 286,
                      height: 200,
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 40, left: 16, right: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("Tambahkan Portfolio terbaik anda",
                              style: TextStyle(
                                  fontFamily: "inter_semibold",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff333333)),
                              textAlign: TextAlign.center),
                          SizedBox(height: 8),
                          Text("Unggah Portfolio dengan format pdf",
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
                      showMoreUpload();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          "Unggah Portfolio",
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
                              const Text("Portfolio terunggah",
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
                                  showMore();
                                },
                                icon: Image.asset('assets/icons/more.png',
                                    width: 24, height: 24)),
                          )
                        ])),
                const Divider(thickness: 2),
                Container(
                    margin: const EdgeInsets.fromLTRB(16, 170, 15, 21),
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<UpdatePortfolioCubit>(context)
                              .updatePortfolio(
                                  PortfolioRequest(_fileportfolio));
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
