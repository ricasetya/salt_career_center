// ignore_for_file: avoid_print

part of '../pages.dart';

class ProfileEditProfile extends StatefulWidget {
  const ProfileEditProfile({super.key});

  @override
  State<ProfileEditProfile> createState() => _ProfileEditProfileState();
}

class _ProfileEditProfileState extends State<ProfileEditProfile> {
  bool isAgree = false;
  late ProfileEditProfileCubit _profileEditProfileCubit;

  final TextEditingController _name = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _nomorPonsel = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _profileEditProfileCubit =
        ProfileEditProfileCubit(ProfileEditProfileRepositoryImpl());
  }

  @override
  void dispose() {
    _name;
    _title;
    _nomorPonsel;
    _profileEditProfileCubit.close();
    super.dispose();
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
          leading: InkWell(
            onTap: () => context.go('/profileblank'),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xff333333),
            ),
          ),
          title: const Text('Sunting Profile'),
          titleTextStyle: const TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
        body: BlocConsumer<ProfileEditProfileCubit, ProfileEditProfileState>(
          listener: (context, profileEditProfileState) {
            if (profileEditProfileState is ProfileEditProfileIsSuccess) {
              context.goNamed(Routes.profileblankPage);
            } else if (profileEditProfileState is ProfileEditProfileIsFailed) {
              print("Profile Edit Profile Failed");
            }
            // if (profileEditProfileState is ProfileEditProfileIsFailed) {
            //   Commons().showSnackbarError(
            //     context,
            //     profileEditProfileState.message!,
            //   );
            //   print("Profile Edit Profile Failed");
            // } else if (profileEditProfileState is ProfileEditProfileIsLoading) {
            //   const Center(
            //     child: CircularProgressIndicator(
            //       color: Colors.red,
            //     ),
            //   );
            // } else if (profileEditProfileState is ProfileEditProfileIsSuccess) {
            //   context.goNamed(Routes.profileblankPage);
            // }
          },
          builder: (context, profileEditProfileState) {
            return SafeArea(
              child: Container(
                color: Colors.grey[100],
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text(
                        "Nama",
                        style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff333333)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 4, 15, 0),
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
                          hintText: "Nama",
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff333333),
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
                        "Title/Posisi",
                        style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff333333)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 4, 15, 0),
                      child: TextFormField(
                        cursorColor: const Color(0xff333333),
                        controller: _title,
                        style: const TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                        decoration: InputDecoration(
                          hintText: "Title/Posisi",
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
                        "Nomor Ponsel",
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 4, 15, 0),
                      child: TextFormField(
                        controller: _nomorPonsel,
                        style: const TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333),
                        ),
                        decoration: InputDecoration(
                          hintText: "Nomor Ponsel",
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
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        bottomSheet: Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          margin: const EdgeInsets.fromLTRB(16, 8, 15, 21),
          height: 60,
          width: 375,
          child: ElevatedButton(
            onPressed: () {
              // if (_formkey.currentState!.validate()) {
              //   context.go('/profileEditProfile');
              // } else {
              //   return;
              // }
              BlocProvider.of<ProfileEditProfileCubit>(context)
                  .submitProfileEditProfile(
                ProfileEditProfileRequest(
                  _name.text,
                  _title.text,
                  _nomorPonsel.text,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffEA232A),
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
      ),
    );
  }
}
