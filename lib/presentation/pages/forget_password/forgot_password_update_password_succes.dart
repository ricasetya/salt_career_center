part of '../pages.dart';

class ForgotPasswordUpdatePasswordSucces extends StatefulWidget {
  const ForgotPasswordUpdatePasswordSucces({super.key});

  @override
  State<ForgotPasswordUpdatePasswordSucces> createState() =>
      _PasswordPageState();
}

class _PasswordPageState extends State<ForgotPasswordUpdatePasswordSucces> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
              height: height * 0.85,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () => context.go('/loginmoc'),
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color(0xffEA232A),
                          ),
                          Text(
                            "Kembali ke Halaman Masuk",
                            style: TextStyle(
                              fontFamily: "inter_semibold",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEA232A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(40, 26, 40, 0),
                    child: Center(
                      child: Image.asset(
                        "assets/images/illus_u_password.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 24, 40, 0),
                      child: const Text(
                        "Password Berhasil Diperbarui",
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff262626),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 4, 40, 0),
                      child: const Text(
                        "Password anda berhasil diperbarui. Silahkan kembali ke halaman Masuk dengan tombol di bawah.",
                        style: TextStyle(
                          fontFamily: "inter_regular",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff666666),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 24, 15, 0),
                    child: ElevatedButton(
                      onPressed: () => context.go('/loginmoc'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEA232A),
                        padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
