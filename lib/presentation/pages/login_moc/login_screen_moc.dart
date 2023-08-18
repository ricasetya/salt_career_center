// ignore_for_file: unused_local_variable, avoid_print

part of '../pages.dart';

class LoginPageMoc extends StatefulWidget {
  const LoginPageMoc({super.key});

  @override
  State<LoginPageMoc> createState() => _LoginPageMocState();
}

class _LoginPageMocState extends State<LoginPageMoc> {
  final _userNameController = TextEditingController();

  bool hidePassword = true;
  final _passwordController = TextEditingController();

  late LoginmocCubit _loginCubit;

  bool isAgree = false;

  @override
  void initState() {
    super.initState();
    _loginCubit = LoginmocCubit(LoginRepositoryImplMoc());
  }

  @override
  void dispose() {
    _loginCubit.close();
    _userNameController;
    _passwordController;
    super.dispose();
  }

  // bool validation() {
  //   if (_userNameController.text.isEmpty && _passwordController.text.isEmpty) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocConsumer<LoginmocCubit, LoginmocState>(
          listener: (context, state) {
            if (state is LoginmocIsError) {
              Commons().showSnackbarError(context, state.message!);
              print("Login Failled");
            } else if (state is LoginmocIsSuccess) {
              context.goNamed(Routes.homescreenPage);
              //print("token: ${LoginmocState.data!.token}");
              Commons().showSnackbarInfo(context, "Login Berhasil");
            }
          },
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                color: Color(0xffC9C4E5),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 460,
                    height: 175,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/illus_login.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            "assets/images/image1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                          child: const Center(
                            child: Text(
                              "Talent & Career Center ",
                              style: TextStyle(
                                fontFamily: "inter_semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff262626),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff262626),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                          child: const Text(
                            "Masuk dengan akun yang pernah anda daftarkan.",
                            style: TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff666666),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                          child: const Text(
                            "Email",
                            style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                          child: TextField(
                            controller: _userNameController,
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: const Color(0xff999999),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                          child: const Text(
                            "Password",
                            style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                          child: TextField(
                            controller: _passwordController,
                            style: const TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff333333),
                            ),
                            obscureText: hidePassword,
                            decoration: InputDecoration(
                              //labelText: "Hallo",
                              //floatingLabelBehavior: FloatingLabelBehavior.auto,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff333333),
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  if (hidePassword) {
                                    setState(
                                      () {
                                        hidePassword = false;
                                      },
                                    );
                                  } else {
                                    setState(
                                      () {
                                        hidePassword = true;
                                      },
                                    );
                                  }
                                },
                                icon: (hidePassword == false
                                    ? const Icon(
                                        Icons.visibility,
                                        color: Color(0xff666666),
                                      )
                                    : const Icon(
                                        Icons.visibility_off,
                                        color: Color(0xff999999),
                                      )),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              fillColor: const Color(0xff999999),
                            ),
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                          child: ElevatedButton(
                            onPressed:

                                //validation() ?

                                () {
                              BlocProvider.of<LoginmocCubit>(context)
                                  .onSubmitLogin(LoginRequest(
                                _userNameController.text,
                                _passwordController.text,
                              ));
                            },
                            // : () {
                            //   Commons().showSnackbarError(
                            //       context, "nomor salah");
                            // },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffEA232A),
                              padding:
                                  const EdgeInsets.fromLTRB(12, 24, 12, 24),
                            ),
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                fontFamily: "inter_bold",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Belum pernah mendaftar?",
                                  style: TextStyle(
                                    fontFamily: "inter_regular",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () => context.go('/register'),
                                  child: const Text(
                                    "Daftar Sekarang",
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
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                          child: GestureDetector(
                            onTap: () => context.go('/forgotpassword'),
                            child: const Text(
                              "Lupa Password",
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
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
