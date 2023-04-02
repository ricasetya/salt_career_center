part of '../pages.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: GestureDetector(
                      onTap: () => context.go('/login'),
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
                    margin: const EdgeInsets.fromLTRB(16, 26, 15, 4),
                    child: const Text(
                      "Lupa Password",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff262626),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 4, 15, 0),
                    child: const Text(
                      "Silahkan masukkan email saat mendaftar, kami akan mengirimkan tautan untuk memulikan password anda.",
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
                    margin: const EdgeInsets.fromLTRB(16, 24, 15, 0),
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
                    margin: const EdgeInsets.fromLTRB(16, 4, 15, 0),
                    child: TextField(
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
                    margin: const EdgeInsets.fromLTRB(16, 24, 15, 0),
                    child: ElevatedButton(
                      onPressed: () => context.go('/conpass'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEA232A),
                        padding: const EdgeInsets.fromLTRB(12, 24, 12, 24),
                      ),
                      child: const Text(
                        "Kirim Email Konfirmasi",
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
