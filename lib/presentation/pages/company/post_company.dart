part of '../pages.dart';

class PostCompany extends StatefulWidget {
  const PostCompany({super.key});

  @override
  State<PostCompany> createState() => _PostCompanyState();
}

class _PostCompanyState extends State<PostCompany> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: 375,
            height: 44,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: TextField(
                style: const TextStyle(
                  fontFamily: 'inter_regular',
                  fontSize: 12,
                  color: Color(0xff333333),
                  backgroundColor: Color(0xffE6E6E6),
                ),
                decoration: InputDecoration(
                  fillColor: const Color(0xffE6E6E6),
                  focusColor: const Color(0xffE6E6E6),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xff666666),
                  hintText: "PT Lion Super Indo",
                ),
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          backgroundColor: const Color(0xffFFFFFF),
          leading: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff333333),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/imagesuperindo.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: const Text(
                    "PT Lion Super Indo",
                    style: TextStyle(
                      fontFamily: 'inter_semibold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Text("Retail"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: const Text("Kebon Jeruk,"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: const Text("Jakarta Barat"),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Icon(
                            Icons.add_outlined,
                            color: Color(0xffEA232A),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          child: const Text(
                            "Ikuti",
                            style: TextStyle(
                              fontFamily: 'inter_semibold',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffEA232A),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: const TabBar(
                    indicatorColor: Color(0xffFFFFFF),
                    labelColor: Color(0xffEA232A),
                    unselectedLabelColor: Color(0xff666666),
                    labelStyle: TextStyle(
                      fontFamily: "inter_semibold",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: <Widget>[
                      Tab(text: 'Tentang'),
                      Tab(text: 'Post'),
                      Tab(text: 'Pekerjaan'),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 16),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/imagesuperindo.png",
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: const [
                            Text('PT. Lion Super Indo'),
                            Text('Retail                         '),
                            Text('24 Januari 2023     '),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                  alignment: Alignment.topLeft,
                  child: const Text(
                      'Selamat Pagi, Super Indo Super Segar!Persiapkan dirimu dan berkas-berkasmu, karena Walk-in Interview Super Indo Apprentice Program akan hadir di Semarang!'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    'assets/images/image895.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Row(
                  children: [Icon(Icons.access_alarm_outlined)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
