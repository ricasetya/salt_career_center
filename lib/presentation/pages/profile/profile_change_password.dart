// ignore_for_file: prefer_final_fields, unused_field, avoid_print

part of '../pages.dart';

class ProfileChangePassword extends StatefulWidget {
  const ProfileChangePassword({super.key});

  @override
  State<ProfileChangePassword> createState() => _ProfileChangePasswordState();
}

class _ProfileChangePasswordState extends State<ProfileChangePassword> {
  bool hideOldPassword = true;
  bool hideNewPassword = true;
  bool hideConNewPassword = true;
  bool isAgree = false;

  final TextEditingController _oldpassword = TextEditingController();
  final TextEditingController _newpassword = TextEditingController();
  final TextEditingController _connewpassword = TextEditingController();

  late ProfileChangePasswordCubit _profileChangePasswordCubit;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void changeOldPasswordVisibility() {
    setState(() {
      hideOldPassword = !hideOldPassword;
    });
  }

  void changeNewPasswordVisibility() {
    setState(() {
      hideNewPassword = !hideNewPassword;
    });
  }

  void changeConNewPasswordVisibility() {
    setState(() {
      hideConNewPassword = !hideConNewPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    _profileChangePasswordCubit =
        ProfileChangePasswordCubit(ProfileChangePasswordRepositoryImpl());
  }

  @override
  void dispose() {
    _oldpassword;
    _newpassword;
    _connewpassword;
    _profileChangePasswordCubit.close();
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
          leading: GestureDetector(
            onTap: () => context.go('/profilesettings'),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xff333333),
            ),
          ),
          title: const Text('Pengaturan'),
          titleTextStyle: const TextStyle(
            fontFamily: "inter_semibold",
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
        body: BlocConsumer<ProfileChangePasswordCubit,
            ProfileChangePasswordState>(
          listener: (context, profileChangePasswordState) {
            if (profileChangePasswordState is ProfileChangePasswordIsSucces) {
              context.goNamed(Routes.loginmocPage);
            } else if (profileChangePasswordState
                is ProfileChangePasswordIsFailed) {
              print("Change Password Failed");
            }
          },
          builder: (context, profileChangePasswordState) {
            return Container(
              color: Colors.grey[100],
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Password Lama",
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
                      controller: _oldpassword,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      obscureText: hideOldPassword,
                      decoration: InputDecoration(
                        hintText: "Password Lama",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff333333),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            changeOldPasswordVisibility();
                          },
                          child: Icon(
                            (hideOldPassword)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff999999),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Password Baru",
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
                      controller: _newpassword,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      obscureText: hideNewPassword,
                      decoration: InputDecoration(
                        hintText: "Password Baru",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            changeNewPasswordVisibility();
                          },
                          child: Icon(
                            (hideNewPassword)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff999999),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 16),
                    child: const Text(
                      "Konfirmasi Password Baru",
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
                      controller: _connewpassword,
                      style: const TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                      obscureText: hideConNewPassword,
                      decoration: InputDecoration(
                        hintText: "Konfirmasi Password Baru",
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff666666),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            changeConNewPasswordVisibility();
                          },
                          child: Icon(
                            (hideConNewPassword)
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xff999999),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fillColor: const Color(0xffFFFFFF),
                        filled: true,
                      ),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Konfirmasi password harus sesuai";
                        }

                        if (_newpassword.text != _connewpassword.text) {
                          return "Konfirmasi password harus sesuai";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
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
              //   //context.go('/profilesettings');
              //   return;
              // } else {
              //   return;
              // }
              BlocProvider.of<ProfileChangePasswordCubit>(context)
                  .fetchProfileChangePassword(ProfileChangePasswordRequest(
                      _oldpassword.text,
                      _newpassword.text,
                      _connewpassword.text));
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
