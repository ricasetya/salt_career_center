// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
// ignore_for_file: unused_local_variable

part of '../pages.dart';

class ForgotPasswordEmailSent extends StatefulWidget {
  final String idEmail;
  const ForgotPasswordEmailSent({
    Key? key,
    required this.idEmail,
  }) : super(key: key);

  @override
  State<ForgotPasswordEmailSent> createState() => _FpEmailSentState();
}

class _FpEmailSentState extends State<ForgotPasswordEmailSent> {
  final _otpController = TextEditingController();
  late ForgetPasswordOtpCubit _forgetPasswordOtpCubit;

  @override
  void initState() {
    _forgetPasswordOtpCubit =
        ForgetPasswordOtpCubit(ForgetPasswordOtpRepositoryImpl());
    super.initState();
  }

  @override
  void dispose() {
    _forgetPasswordOtpCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocConsumer<ForgetPasswordOtpCubit, ForgetPasswordOtpState>(
        listener: (context, forgetPasswordOtpState) {
          if (forgetPasswordOtpState is ForgetPasswordOtpIsSuccess) {
            context.goNamed(Routes.forgotpasswordupdatepasswordPage,
                extra: widget.idEmail);
          } else if (forgetPasswordOtpState is ForgetPasswordOtpIsError) {
            print("OTP Failled");
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
                            "Silahkan cek email anda, kami sudah mengirim Kode OTP untuk memperbarui password anda.",
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
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                        child: TextField(
                          controller: _otpController,
                          style: const TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333),
                          ),
                          //obscureText: hidePassword,
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff333333),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                //
                              },
                              child: IconButton(
                                  onPressed: () {
                                    BlocProvider.of<ForgetPasswordOtpCubit>(
                                            context)
                                        .buttonForgetPasswordOtp(
                                            ForgetPasswordOtpRequest(
                                                widget.idEmail,
                                                _otpController.text));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Color(0xffEA232A),
                                  )),
                              // Icon(
                              //   // (hidePassword)
                              //   //     ? Icons.visibility_off
                              //   //     : Icons.visibility,
                              //   color: const Color(0xff666666),
                              // ),
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
          );
        },
      ),
    );
  }
}
