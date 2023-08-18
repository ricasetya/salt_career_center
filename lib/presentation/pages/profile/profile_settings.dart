// ignore_for_file: unused_local_variable

part of '../pages.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  void _showDialog(BuildContext context) async {
    final result = await showDialog(
      context: context,
      builder: (context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: const Color.fromRGBO(255, 255, 255, 1),
        margin:
            const EdgeInsets.only(top: 340, left: 60, right: 60, bottom: 290),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Keluar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "inter_semibold",
                  fontSize: 16,
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Apakah anda yakin akan keluar dari akun anda?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "inter_regular",
                  fontSize: 14,
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Batal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "inter_bold",
                        fontSize: 14,
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.go('/loginmoc'),
                    child: const Text(
                      "Keluar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "inter_bold",
                        fontSize: 14,
                        color: Color.fromRGBO(153, 153, 153, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          centerTitle: true,
          elevation: 0.5,
          leading: GestureDetector(
            onTap: () => context.go('/profileblank'),
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
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          SizedBox(
            height: height * 0.36767,
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              color: const Color.fromRGBO(255, 255, 255, 1),
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                    child: const Text(
                      'Syarat dan Ketentuan',
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
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                    child: const Text(
                      'Privasi',
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
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text(
                          'Versi Aplikasi',
                          style: TextStyle(
                            fontFamily: "inter_semibold",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff333333),
                          ),
                        ),
                        Text(
                          'V1.0.0',
                          style: TextStyle(
                            fontFamily: "inter_regular",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 2),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                    child: GestureDetector(
                      onTap: () => context.go('/profileChangePassword'),
                      child: const Text(
                        'Ganti Password',
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 12, 15, 12),
                    child: GestureDetector(
                      onTap: () {
                        _showDialog(context);
                      },
                      child: const Text(
                        'Keluar',
                        style: TextStyle(
                          fontFamily: "inter_semibold",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
