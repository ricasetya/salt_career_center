part of '../pages.dart';

class AboutCompany extends StatefulWidget {
  const AboutCompany({super.key});

  @override
  State<AboutCompany> createState() => _AboutCompanyState();
}

class _AboutCompanyState extends State<AboutCompany> {
  PickedFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: AppBar(
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.05),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          leading:
              Image.asset('assets/icons/back.png', height: 18.67, width: 10),
          flexibleSpace: Container(
            margin: const EdgeInsets.fromLTRB(50, 30, 15, 8),
            child: TextFormField(
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontFamily: 'inter_regular',
                fontSize: 16,
                color: Color(0xff333333),
                fontWeight: FontWeight.w400,
                backgroundColor: Color(0xffE6E6E6),
              ),
              cursorColor: const Color(0xff333333),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Image.asset('assets/icons/search.png'),
                  fillColor: const Color.fromRGBO(230, 230, 230, 1),
                  filled: true),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.25,
                    child: Container(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 16),
                            child:
                                Image.asset('assets/images/imagesuperindo.png'),
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
                            child: const Text(
                              "Retail • Kebon Jeruk, Jakarta Barat",
                              style: TextStyle(
                                fontFamily: 'inter_regular',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            child: const DefaultTabController(
                                length: 2,
                                child: TabBar(
                                  indicator: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 1,
                                        color: Color.fromRGBO(204, 204, 204, 1),
                                      ),
                                      left: BorderSide(
                                        width: 1,
                                        style: BorderStyle.solid,
                                        color: Color.fromRGBO(204, 204, 204, 1),
                                      ),
                                    ),
                                  ),
                                  indicatorColor: Color(0xffFFFFFF),
                                  labelColor: Color(0xffEA232A),
                                  unselectedLabelColor: Color(0xff666666),
                                  indicatorPadding: EdgeInsets.all(0),
                                  labelStyle: TextStyle(
                                    fontFamily: "inter_semibold",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  tabs: <Widget>[
                                    Tab(text: 'Tentang'),
                                    Tab(text: 'Pekerjaan'),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // // //
    //      Container(
    // // //                 child: Row(
    // // //                   mainAxisAlignment: MainAxisAlignment.center,
    // // //                   children: [
    // // //                     Container(
    // // //                       child: const Text("Retail"),
    // // //                     ),
    // // //                     const SizedBox(
    // // //                       width: 5,
    // // //                     ),
    // // //                     Container(
    // // //                       child: const Text("Kebon Jeruk,"),
    // // //                     ),
    // // //                     const SizedBox(
    // // //                       width: 5,
    // // //                     ),
    // // //                     Container(
    // // //                       child: const Text("Jakarta Barat"),
    // // //                     ),
    // // //                   ],
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: EdgeInsets.only(top: 8),
    // // //                 child: Row(
    // // //                   mainAxisAlignment: MainAxisAlignment.center,
    // // //                   children: [
    // // //                     Container(
    // // //                       child: const Icon(
    // // //                         Icons.add_outlined,
    // // //                         color: Color(0xffEA232A),
    // // //                       ),
    // // //                     ),
    // // //                     const SizedBox(
    // // //                       width: 2,
    // // //                     ),
    // // //                     // Container(
    // // //                     //   child: const Text(
    // // //                     //     "Ikuti",
    // // //                     //     style: TextStyle(
    // // //                     //       fontFamily: 'inter_semibold',
    // // //                     //       fontSize: 14,
    // // //                     //       fontWeight: FontWeight.w600,
    // // //                     //       color: Color(0xffEA232A),
    // // //                     //     ),
    // // //                     //   ),
    // // //                     // ),
    // // //                   ],
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 child: const TabBar(
    // // //                   indicatorColor: Color(0xffFFFFFF),
    // // //                   labelColor: Color(0xffEA232A),
    // // //                   unselectedLabelColor: Color(0xff666666),
    // // //                   labelStyle: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                   ),
    // // //                   tabs: <Widget>[
    // // //                     Tab(text: 'Tentang'),
    // // //                     // Tab(text: 'Post'),
    // // //                     Tab(text: 'Pekerjaan'),
    // // //                   ],
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Profil",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                     color: Color(0xff333333),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Sejak tahun 1997, Super Indo telah bertumbuh dan berkembang di Indonesia melalui kemitraan bersama Ahold Delhaize yang berasal dari Belanda dan Salim Group dari Indonesia. Didukung lebih dari 9,000 karyawan* yang terlatih, Super Indo berhasil menyediakan berbagai macam barang kebutuhan sehari-hari berkualitas tinggi dengan harga ekonomis.",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_regular",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w400,
    // // //                     color: Color(0xff333333),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Website",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                     color: Color(0xff333333),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "http://www.superindo.co.id/karir",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                     color: Color(0xffEA232A),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Lokasi",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                     color: Color(0xff333333),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Menara Bidakara 2, Pancoran, Jakarta Selatan Jl. Jendral Gatot Soebroto Kav. 71-73, Pancoran, Jakarta, Jakarta Selatan 12870, ID",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_regular",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w400,
    // // //                     color: Color(0xff333333),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //               Container(
    // // //                 margin: const EdgeInsets.only(left: 16, top: 2),
    // // //                 alignment: Alignment.topLeft,
    // // //                 child: const Text(
    // // //                   "Lihat di Google Maps",
    // // //                   style: TextStyle(
    // // //                     fontFamily: "inter_semibold",
    // // //                     fontSize: 14,
    // // //                     fontWeight: FontWeight.w600,
    // // //                     color: Color(0xffEA232A),
    // // //                   ),
    // // //                 ),
    // // //               ),
    // // //             ],
    // // //           ),
    // // //         ),
    // // //       ),
    // // //     ),
    // //   ),
    // );
  }
}
