part of '../pages.dart';

class ForgotPasswordEmailSent extends StatefulWidget {
  const ForgotPasswordEmailSent({super.key});

  @override
  State<ForgotPasswordEmailSent> createState() => _FpEmailSentState();
}

class _FpEmailSentState extends State<ForgotPasswordEmailSent> {
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
                  SizedBox(height: height * 0.045),
                  Center(
                    child: Image.asset(
                      "assets/images/illus_email_sent.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  const Center(
                    child: Text(
                      "Email Terkirim",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff262626),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: const Text(
                        "Silahkan cek email anda, kami sudah mengirim tautan untuk memperbarui password anda.",
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
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Tidak menerima email?",
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
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () =>
                              context.go('/forgotpasswordupdatepassword'),
                          child: const Text(
                            "Kirim Ulang Email",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
