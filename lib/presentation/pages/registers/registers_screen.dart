// ignore_for_file: unused_local_variable, avoid_print

part of '../pages.dart';

class Registers extends StatefulWidget {
  const Registers({super.key});

  @override
  State<Registers> createState() => _RegistersState();
}

class _RegistersState extends State<Registers> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool hidePassword = true;

  late RegistersBloc _registersBloc;

  bool isAgree = false;

  void changePasswordVisibility() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }

  @override
  void initState() {
    super.initState();
    _registersBloc = RegistersBloc(RegistersRepositoryImpl());
  }

  @override
  void dispose() {
    _registersBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<RegistersBloc, RegistersState>(
          listener: (context, registersState) {
            if (registersState is RegistersIsFailed) {
              Commons().showSnackbarError(context, registersState.message!);
            } else if (registersState is RegistersIsSuccess) {
              print('Oke');
              context.goNamed(Routes.homescreenPage);
            }
          },
          child: Container(
            decoration: const BoxDecoration(color: Color(0xffC9C4E5)),
            child: Stack(
              children: <Widget>[
                Container(
                    width: 460,
                    height: 175,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/illus_login.png'),
                            fit: BoxFit.fitWidth))),
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
                                color: Color(0xff262626)),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff262626)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                        child: const Text(
                          "Daftarkan akun untuk menggunakan aplikasi ini.",
                          style: TextStyle(
                              fontFamily: "inter_regular",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff666666)),
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
                              color: Color(0xff333333)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                        child: TextField(
                          controller: _emailController,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff333333),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: const Color(0xff999999),
                          ),
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
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
                        margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                        child: TextField(
                          controller: _nameController,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff333333),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fillColor: const Color(0xff999999),
                          ),
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.name,
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
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff333333),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                changePasswordVisibility();
                              },
                              child: Icon(
                                (hidePassword)
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xff666666),
                              ),
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
                          onPressed: () {
                            BlocProvider.of<RegistersBloc>(context).add(
                              UserRegistersEvent(
                                email: _emailController.text,
                                name: _nameController.text,
                                password: _passwordController.text,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEA232A),
                            padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                          ),
                          child: const Text(
                            "Daftar",
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
                                "Sudah memiliki akun?",
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
                                onTap: () => context.go('/loginmoc'),
                                child: const Text(
                                  "Masuk Sekarang",
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
