part of 'pages.dart';

class SampleCoba extends StatefulWidget {
  const SampleCoba({Key? key}) : super(key: key);

  @override
  State<SampleCoba> createState() => _ScreenEditProfilState();
}

bool isAgree = false;
TextEditingController namaController = TextEditingController();
TextEditingController tempatController = TextEditingController();
TextEditingController tanggalController = TextEditingController();
TextEditingController pekerjaanController = TextEditingController();
TextEditingController uddController = TextEditingController();
TextEditingController nohpController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController kecController = TextEditingController();
TextEditingController kelController = TextEditingController();
TextEditingController alamatController = TextEditingController();
TextEditingController posController = TextEditingController();

final _formKey = GlobalKey<FormState>();

String? groupValue;
bool isOpen = false;
String pilihUDD = 'Pilih UDD PMI  ';
List<String> UDD = [
  "UDD PMI Ketapang",
  "UDD PMI Pontianak",
];
bool isPush = false;
String pilihPekerjaan = 'Pilih Pekerjaan';
List<String> Pekerjaan = [
  "Pegawai Negeri",
  "Pegawai Swasta",
  "TNI",
  "POLRI",
  "Pengusaha",
  "Wiraswasta"
];

Future getImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? imagePicked = await _picker.pickImage(
    source: ImageSource.camera,
  );
}

void _showSelectPhotoOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.17,
        maxChildSize: 0.4,
        minChildSize: 0.17,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
              controller: scrollController,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pilih Foto',
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff262626)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.camera_alt_outlined),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () async {
                            await getImage();
                          },
                          child: const Text(
                            "Ambil Foto",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/avatar.png",
                          height: 23,
                          width: 23,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Unggah dari galeri",
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        }),
  );
}

class _ScreenEditProfilState extends State<SampleCoba> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: AppBar(
            shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
            backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
            flexibleSpace: Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 17.67, left: 14),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => context.go('/akun'),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        )),
                    const Text(
                      "Edit Profil",
                      style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff262626)),
                    ),
                    const SizedBox(
                      width: 164,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            showFlash(
                                context: context,
                                duration: const Duration(seconds: 5),
                                builder: ((context, controller) {
                                  return Flash(
                                      controller: controller,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(36),
                                      ),
                                      backgroundColor: const Color.fromRGBO(
                                          230, 230, 230, 1),
                                      margin: const EdgeInsets.only(bottom: 50),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 10, 20, 10),
                                        child: Text(
                                          "Data Profil Berhasil Di Simpan",
                                          style: TextStyle(
                                              fontFamily: "Plus Jakarta Sans",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  51, 51, 51, 1)),
                                        ),
                                      ));
                                }));
                            context.go('/akun');
                          }
                        });
                      },
                      child: const Text(
                        "Simpan",
                        style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff262626)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 139),
                    child: Image.asset(
                      "assets/images/avatar.png",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 24),
                    child: DetailText("Informasi Pribadi"),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },

                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: namaController,
                      decoration: DetailDecoration("Nama Lengkap"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: tempatController,
                      decoration: DetailDecoration("Tempat Lahir"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: tanggalController,
                      decoration: DetailDecoration("Tanggal Lahir"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 24),
                    child: DetailText("Jenis Kelamin"),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color.fromRGBO(217, 30, 42, 1),
                          value: "Laki-Laki",
                          groupValue: groupValue,
                          title: const Text(
                            "Laki-Laki",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              groupValue = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color.fromRGBO(217, 30, 42, 1),
                          value: "Perempuan",
                          groupValue: groupValue,
                          title: const Text(
                            "Perempuan",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              groupValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 4,
                    color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 18),
                    child: DetailText("Informasi Pekerjaan"),
                  ),
                  InkWell(
                    onTap: () {
                      isPush = !isPush;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 45,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(212, 212, 212, 1))),
                        ),
                        width: 312,
                        margin: const EdgeInsets.fromLTRB(24, 14, 24, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(pilihPekerjaan),
                            Icon(isPush
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 25),
                    child: DetailText("Informasi PMI"),
                  ),
                  InkWell(
                    onTap: () {
                      isOpen = !isOpen;
                      setState(() {});
                    },
                    child: SizedBox(
                      height: 45,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromRGBO(212, 212, 212, 1))),
                        ),
                        width: 312,
                        margin: const EdgeInsets.fromLTRB(24, 14, 24, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(pilihUDD),
                            Icon(isOpen
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 25),
                    child: DetailText("Informasi Kontak"),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: nohpController,
                      decoration: DetailDecoration("Telepon/No. Handphone"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 9.5,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: emailController,
                      decoration: DetailDecoration("Email"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    thickness: 4,
                    color: Color.fromRGBO(230, 230, 230, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 24),
                    child: DetailText("Informasi Alamat"),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },

                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: alamatController,
                      decoration: DetailDecoration("Alamat KTP"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: kecController,
                      decoration: DetailDecoration("Kecamatan"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: kelController,
                      decoration: DetailDecoration("Kelurahan"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: TextFormField(
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromRGBO(26, 26, 26, 1),
                      controller: posController,
                      decoration: DetailDecoration("Kode Pos"),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
              if (isPush)
                ListView(
                  padding: const EdgeInsets.only(top: 380, left: 24, right: 24),
                  primary: true,
                  shrinkWrap: true,
                  children: Pekerjaan.map((e) => Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(249, 249, 249, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: InkWell(
                              onTap: (() {
                                pilihPekerjaan = e;
                                isPush = false;
                                setState(() {});
                              }),
                              child: Text(
                                e,
                                style: const TextStyle(
                                    fontFamily: "Plus Jakarta Sans",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(45, 45, 45, 1)),
                              )),
                        ),
                      )).toList(),
                ),
              if (isOpen)
                ListView(
                  padding: const EdgeInsets.only(top: 466, left: 24, right: 24),
                  primary: true,
                  shrinkWrap: true,
                  children: UDD
                      .map((e) => Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(249, 249, 249, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: InkWell(
                                  onTap: (() {
                                    pilihUDD = e;
                                    isOpen = false;
                                    setState(() {});
                                  }),
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                        fontFamily: "Plus Jakarta Sans",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(45, 45, 45, 1)),
                                  )),
                            ),
                          ))
                      .toList(),
                ),
              Positioned(
                  top: 52,
                  left: 170,
                  child: InkWell(
                    onTap: () {
                      _showSelectPhotoOptions(context);
                    },
                    child: Image.asset(
                      "assets/images/avatar.png",
                      height: 16,
                      width: 18,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration DetailDecoration(String text) {
    return InputDecoration(
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(217, 30, 42, 1)),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(230, 230, 230, 1)),
      ),
      labelText: text,
      labelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff262626)),
    );
  }

  Text DetailText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff262626)),
    );
  }
}
