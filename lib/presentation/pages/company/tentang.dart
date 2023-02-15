part of '../pages.dart';

class TentangScreen extends StatefulWidget {
  const TentangScreen({super.key});

  @override
  State<TentangScreen> createState() => _TentangScreenState();
}

class _TentangScreenState extends State<TentangScreen> {
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/imagesuperindo.png",
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
                  Container(
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
                    child: const Text(
                      "Profil",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Sejak tahun 1997, Super Indo telah bertumbuh dan berkembang di Indonesia melalui kemitraan bersama Ahold Delhaize yang berasal dari Belanda dan Salim Group dari Indonesia. Didukung lebih dari 9,000 karyawan* yang terlatih, Super Indo berhasil menyediakan berbagai macam barang kebutuhan sehari-hari berkualitas tinggi dengan harga ekonomis.",
                      style: TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Website",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "http://www.superindo.co.id/karir",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffEA232A),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Lokasi",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Menara Bidakara 2, Pancoran, Jakarta Selatan Jl. Jendral Gatot Soebroto Kav. 71-73, Pancoran, Jakarta, Jakarta Selatan 12870, ID",
                      style: TextStyle(
                        fontFamily: "inter_regular",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 2),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Lihat di Google Maps",
                      style: TextStyle(
                        fontFamily: "inter_semibold",
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
        ),
      ),
    );
  }
}
