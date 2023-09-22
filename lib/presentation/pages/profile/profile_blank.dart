// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: non_constant_identifier_names, deprecated_member_use, unused_local_variable, avoid_print, unused_element, no_leading_underscores_for_local_identifiers

part of '../pages.dart';

class ProfileBlank extends StatefulWidget {
  const ProfileBlank({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileBlank> createState() => _ProfileBlankState();
}

class _ProfileBlankState extends State<ProfileBlank> {
  //final _formKey = GlobalKey<FormState>();
  late int _bottomNavCurrentIndext = 0;
  File? photo;
  String urlPhoto = '';
  late ProfileDataCubit _profileDataCubit;
  bool _isLoading = false;

  Future<void> _uploadImage() async {
    setState(() {
      _isLoading = true;
    });

    await BlocProvider.of<UpdatePhotoCubit>(context)
        .fetchProfileUpdatePhoto(photo!);

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> ChoiceImageCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(
        () {
          photo = File(pickedImage.path);
          urlPhoto = '';
        },
      );
    }
  }

  Future<void> ChoiceImageGallery() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(
        () {
          photo = File(pickedFile.path);
          urlPhoto = '';
        },
      );
    }
  }

  @override
  void initState() {
    urlPhoto.text;

    _profileDataCubit = ProfileDataCubit(ProfileDataRepositoryImpl());
    super.initState();
  }

  @override
  void dispose() {
    _profileDataCubit.close();
    _bottomNavCurrentIndext;
    photo;
    urlPhoto;

    super.dispose();
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.2,
        maxChildSize: 0.4,
        minChildSize: 0.17,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: BlocConsumer<UpdatePhotoCubit, UpdatePhotoState>(
                listener: (context, state) {
              if (state is UpdatePhotoIsSucces) {
                context.goNamed(Routes.profileblankPage);
              } else if (state is UpdatePhotoIsError) {
                print("Change Photo Failed");
              }
            }, builder: (context, state) {
              return Container(
                padding: const EdgeInsets.only(left: 18, top: 28),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/camera.png"),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  ChoiceImageCamera();
                                  //context.goNamed(Routes.profileinputabilityPage);
                                });
                                //ChoiceImage(ImageSource.camera);
                                //context.goNamed(Routes.profileEditProfilePage);
                              },
                              child: const Text(
                                "Ambil foto",
                                style: TextStyle(
                                    fontFamily: "inter_bold",
                                    fontSize: 16,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Image.asset("assets/icons/galery.png"),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () {
                                //_uploadImage();
                                ChoiceImageGallery();
                              },
                              child: const Text(
                                "Pilih dari galeri",
                                style: TextStyle(
                                    fontFamily: "inter_bold",
                                    fontSize: 16,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Image.asset("assets/icons/trash.png"),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () {
                                _uploadImage();
                              },
                              child: const Text(
                                "Simpan foto",
                                style: TextStyle(
                                    fontFamily: "inter_bold",
                                    fontSize: 16,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        // const SizedBox(height: 24),
                        // Row(
                        //   children: [
                        //     Image.asset("assets/icons/trash.png"),
                        //     const SizedBox(width: 12),
                        //     InkWell(
                        //       onTap: () {
                        //         // ChoiceImage(ImageSource.camera);
                        //       },
                        //       child: const Text(
                        //         "Hapus foto",
                        //         style: TextStyle(
                        //             fontFamily: "inter_bold",
                        //             fontSize: 16,
                        //             color: Color.fromRGBO(51, 51, 51, 1),
                        //             fontWeight: FontWeight.w600),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                    // Container(
                    //   padding: const EdgeInsets.only(top: 24, bottom: 50),
                    //   alignment: Alignment.center,
                    //   child: _urlImage != ''
                    //       ? CircleAvatar(
                    //           backgroundImage: NetworkImage(_urlImage),
                    //           maxRadius: 50,
                    //         )
                    //       : CircleAvatar(
                    //           backgroundColor: Colors.grey,
                    //           maxRadius: 50,
                    //           child: photo != null
                    //               ? CircleAvatar(
                    //                   backgroundColor: Colors.grey,
                    //                   maxRadius: 50,
                    //                   backgroundImage: Image.memory(
                    //                     photo!.readAsBytesSync(),
                    //                   ).image,
                    //                 )
                    //               : Container(
                    //                   decoration: const BoxDecoration(
                    //                     shape: BoxShape.circle,
                    //                     color: Colors.grey,
                    //                   ),
                    //                   child: Transform.scale(
                    //                     scale: 2.0,
                    //                     child: Image.asset(
                    //                       "assets/images/avatar.png",
                    //                       fit: BoxFit.cover,
                    //                     ),
                    //                   ),
                    //                 ),
                    //         ),
                    // ),
                  ],
                ),
              );
            }),
          );
        },
      ),
    );
  }

  bool isClose = false;

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: const Text("Profile"),
          titleTextStyle: const TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
          actions: [
            IconButton(
              onPressed: () => context.go('/profilesettings'),
              icon: Image.asset('assets/icons/setting.png'),
            ),
          ],
          elevation: 0.5,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        //key: _formKey,
        child: Form(
          child: Stack(
            children: <Widget>[
              BlocBuilder<ProfileDataCubit, ProfileDataState>(
                builder: (context, profileDataState) {
                  if (profileDataState is ProfileDataIsSuccess) {
                    final data = profileDataState.data;
                    print(profileDataState.data);
                    return BlocBuilder<ProfileDataCubit, ProfileDataState>(
                        builder: (context, profileDataState) {
                      if (profileDataState is ProfileDataIsSuccess) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * 0.30,
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 16),
                                      child: InkWell(
                                        onTap: () {
                                          _showSelectPhotoOptions(context);
                                          setState(() {});
                                        },
                                        child: photo != null
                                            ? CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    profileDataState
                                                        .data.urlPhoto
                                                        .toString()),
                                                maxRadius: 50,
                                              )
                                            : const CircleAvatar(
                                                backgroundColor: Colors.grey,
                                                maxRadius: 50,
                                                backgroundImage: AssetImage(
                                                    "assets/images/avatar.png"),
                                              ),

                                        // CircleAvatar(
                                        //     backgroundColor: Colors.grey,
                                        //     maxRadius: 50,
                                        //     child: photo == null
                                        //         ? CircleAvatar(
                                        //             backgroundColor:
                                        //                 Colors.grey,
                                        //             maxRadius: 50,
                                        //             backgroundImage:
                                        //                 Image.memory(
                                        //               photo!
                                        //                   .readAsBytesSync(),
                                        //             ).image,
                                        //           )
                                        //         : const CircleAvatar(
                                        //             backgroundColor:
                                        //                 Colors.grey,
                                        //             maxRadius: 50,
                                        //             backgroundImage: AssetImage(
                                        //                 "assets/images/avatar.png"),
                                        //           ),

                                        // Container(
                                        //     decoration:
                                        //         const BoxDecoration(
                                        //       shape:
                                        //           BoxShape.circle,
                                        //       color: Colors.grey,
                                        //     ),
                                        //     child: Transform.scale(
                                        //       //scale: 2.0,
                                        //       child: Image.asset(
                                        //         "assets/images/avatar.png",
                                        //         fit: BoxFit.cover,
                                        //       ),
                                        //     ),
                                        //   ),
                                        //),

                                        // photo != null
                                        //     ? const CircleAvatar(
                                        //         //maxRadius: 50,
                                        //         //backgroundImage: Image.memory(photo!.readAsBytesSync().photo),
                                        //         backgroundImage: AssetImage(
                                        //             "assets/images/avatar.png"),
                                        //       )
                                        //     : CircleAvatar(
                                        //         backgroundImage: NetworkImage(
                                        //             profileDataState
                                        //                 .data.urlPhoto
                                        //                 .toString()),
                                        //         // FileImage(
                                        //         //   File(_imageFile!.path),
                                        //         // ),
                                        //       ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        "${profileDataState.data.name}",
                                        style: const TextStyle(
                                          fontFamily: 'inter_semibold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        profileDataState.data.skill == null
                                            ? "---"
                                            : profileDataState.data.skill!,
                                        style: const TextStyle(
                                          fontFamily: 'inter_semibold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        "${profileDataState.data.email}",
                                        style: const TextStyle(
                                          fontFamily: 'inter_regular',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        profileDataState.data.phoneNumber ==
                                                null
                                            ? "---"
                                            : profileDataState
                                                .data.phoneNumber!,
                                        style: const TextStyle(
                                          fontFamily: 'inter_semibold',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: InkWell(
                                        onTap: () {
                                          //context.go('/profileEditProfile')

                                          setState(() {
                                            context.goNamed(
                                                Routes.profileEditProfilePage,
                                                extra: ProfileEditProfileData(
                                                    "${profileDataState.data.name}",
                                                    "${profileDataState.data.skill}",
                                                    "${profileDataState.data.phoneNumber}")
                                                //extra: profileDataState.data.name,
                                                );
                                          });
                                        },
                                        child: const Text(
                                          "Sunting Profil",
                                          style: TextStyle(
                                            fontFamily: 'inter_semibold',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffEA232A),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 16, top: 8),
                                        alignment: Alignment.topLeft,
                                        child: const Text(
                                          "Pengalaman Kerja",
                                          style: TextStyle(
                                            fontFamily: "inter_semibold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        margin: const EdgeInsets.only(
                                            top: 8, right: 15),
                                        child: InkWell(
                                          onTap: () =>
                                              context.go('/experience'),
                                          child: const Text(
                                            "Tambah",
                                            textAlign: TextAlign.end,
                                            style: TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffEA232A),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    indent: 16,
                                    endIndent: 16,
                                  ),
                                  buildWorkExperience(
                                      profileDataState.data.workExperience),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 16, top: 8),
                                        alignment: Alignment.topLeft,
                                        child: const Text(
                                          "Pendidikan",
                                          style: TextStyle(
                                            fontFamily: "inter_semibold",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topRight,
                                        margin: const EdgeInsets.only(
                                            top: 8, right: 15),
                                        child: const Text(
                                          "Tambah",
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontFamily: "inter_semibold",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffEA232A),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 2,
                                    indent: 16,
                                    endIndent: 16,
                                  ),
                                  buildEducationWidget(
                                      profileDataState.data.education),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.1,
                              child: Container(
                                margin: const EdgeInsets.only(top: 8),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 16, top: 8),
                                      child: const Text(
                                        "Kemampuan",
                                        style: TextStyle(
                                          fontFamily: "inter_semibold",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      indent: 16,
                                      endIndent: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //    profileDataState.data.ability),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 16),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            profileDataState.data.ability ==
                                                    null
                                                ? "Belum ada data dimasukkan"
                                                : profileDataState.data.ability!
                                                    .join(", "),
                                            style: const TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff666666),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          child: InkWell(
                                            onTap: () => context
                                                .go('/profileinputability'),
                                            child: Image.asset(
                                              'assets/icons/icon_edit.png',
                                              color: const Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.1,
                              child: Container(
                                margin: const EdgeInsets.only(top: 8),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 16, top: 8),
                                      child: const Text(
                                        "Bahasa",
                                        style: TextStyle(
                                          fontFamily: "inter_semibold",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      indent: 16,
                                      endIndent: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 16),
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            profileDataState.data.language ==
                                                    null
                                                ? "Belum ada data dimasukkan"
                                                : profileDataState
                                                    .data.language!
                                                    .join(", "),
                                            style: const TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff666666),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          child: InkWell(
                                            onTap: () => context
                                                .go('/profileinputlanguage'),
                                            child: Image.asset(
                                              'assets/icons/icon_edit.png',
                                              color: const Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.1,
                              child: Container(
                                margin: const EdgeInsets.only(top: 8),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 16, top: 8),
                                      child: const Text(
                                        "CV/Resume",
                                        style: TextStyle(
                                          fontFamily: "inter_semibold",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      indent: 16,
                                      endIndent: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 16),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            "Belum ada data dimasukkan",
                                            style: TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff666666),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          child: InkWell(
                                            child: Image.asset(
                                              'assets/icons/icon_edit.png',
                                              color: const Color(0xff999999),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.1,
                              child: Container(
                                margin: const EdgeInsets.only(top: 8),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(
                                          left: 16, top: 8),
                                      child: const Text(
                                        "Portofolio",
                                        style: TextStyle(
                                          fontFamily: "inter_semibold",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff333333),
                                        ),
                                      ),
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      indent: 16,
                                      endIndent: 16,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 16),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            "Belum ada data dimasukkan",
                                            style: TextStyle(
                                              fontFamily: "inter_semibold",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff666666),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          margin:
                                              const EdgeInsets.only(right: 15),
                                          child: InkWell(
                                            child: Image.asset(
                                              'assets/icons/icon_edit.png',
                                              color: const Color(0xff999999),
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
                        );
                      } else if (profileDataState is ProfileDataIsError) {
                        print(profileDataState.message);
                      }
                      return "".text.make();
                    });
                  }
                  return "".text.make();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: const Color(0xffEA232A),
        unselectedItemColor: const Color(0xff999999),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 10,
          color: Color(0xffEA232A),
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: "inter_semibold",
          fontSize: 10,
          color: Color(0xff999999),
        ),
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndext = index;
          });
        },
        currentIndex: _bottomNavCurrentIndext,
        elevation: 0.05,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => context.go('/homescreen', extra: 0),
              child: Image.asset(
                'assets/icons/beranda.png',
                color: const Color(0xff999999),
              ),
            ),
            activeIcon: Image.asset(
              'assets/icons/beranda.png',
              color: const Color(0xff999999),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => context.go('/jobscreen', extra: 1),
              child: Image.asset(
                'assets/icons/pekerjaan.png',
                color: const Color(0xff999999),
              ),
            ),
            label: 'Pekerjaan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/kegiatan.png',
              color: const Color(0xff999999),
            ),
            label: 'Kegiatan',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/notif.png',
              color: const Color(0xff999999),
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/profil.png',
              color: const Color(0xffEA232A),
            ),
            activeIcon: Image.asset(
              'assets/icons/profil.png',
              color: const Color(0xffEA232A),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget buildWorkExperience(List<WorkExperienceData>? profileWorkExperience) {
    if (profileWorkExperience == null || profileWorkExperience.isEmpty) {
      return Container(
        margin: const EdgeInsets.only(
          left: 16,
          bottom: 8,
        ),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Belum ada data dimasukkan",
          style: TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff666666),
          ),
        ),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: profileWorkExperience.length,
        itemBuilder: (context, index) {
          final workExperience = profileWorkExperience[index];

          return Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              workExperience.Name,
              style: const TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff666666),
              ),
            ),
          );
        },
      );
    }
  }

  Widget buildEducationWidget(List<EducationData>? profileEducations) {
    if (profileEducations == null || profileEducations.isEmpty) {
      return Container(
        margin: const EdgeInsets.only(
          left: 16,
          bottom: 8,
        ),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Belum ada data dimasukkan",
          style: TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff666666),
          ),
        ),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: profileEducations.length,
        itemBuilder: (context, index) {
          final education = profileEducations[index];

          return Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              education.Name!,
              style: const TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff666666),
              ),
            ),
          );
        },
      );
    }
  }

  Widget buildAbilityWidget(List<AbilityData>? profileAbility) {
    if (profileAbility == null || profileAbility.isEmpty) {
      return Container(
        margin: const EdgeInsets.only(
          left: 16,
          bottom: 8,
        ),
        alignment: Alignment.centerLeft,
        child: const Text(
          "Belum ada data dimasukkan",
          style: TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff666666),
          ),
        ),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: profileAbility.length,
        itemBuilder: (context, index) {
          final ability = profileAbility[index];

          return Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              left: 16,
              bottom: 8,
            ),
            child: Text(
              ability.ability!.join(", "),
              style: const TextStyle(
                fontFamily: "inter_semibold",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff666666),
              ),
            ),
          );
        },
      );
    }
  }

  // Widget buildCvResume (Profile)
}
