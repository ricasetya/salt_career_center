part of '../pages.dart';

class SearchOrang extends StatefulWidget {
  const SearchOrang({super.key});

  @override
  State<SearchOrang> createState() => _SearchOrangState();
}

class _SearchOrangState extends State<SearchOrang> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: SizedBox(
            width: 375,
            height: 44,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextField(
                style: const TextStyle(
                  fontFamily: "inter",
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                  prefixIconColor: const Color(0xff666666),
                  focusColor: const Color(0xffE6E6E6),
                  hintText: "Digital Marketing",
                  fillColor: const Color(0xffE6E6E6),
                ),
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xffFFFFFF),
            labelColor: Color.fromARGB(255, 223, 15, 15),
            unselectedLabelColor: Color(0xff999999),
            labelStyle: TextStyle(
              fontFamily: "inter_semibold",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(
                text: "Orang",
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                  width: 5,
                ),
              ),
              Tab(text: " Pekerjaan"),
              Tab(text: "Perusahaan"),
            ],
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xffE6E6E6),
                        border: Border.all(
                            color: const Color(0xffFFFFFF), width: 0.2),
                      ),
                      height: 88,
                      width: 344,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 16,
                            ),
                            child: Image.asset("assets/images/ellipse.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 22,
                              left: 12,
                              right: 50,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Raden Rosyd Aqbar ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Setiyanto",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text("Digital Marketing"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              label: const Text(
                                "Ikuti",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xffFFFFFF)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 16,
                  right: 16,
                ),
                child: ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 0.2),
                      ),
                      height: 88,
                      width: 344,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 16,
                            ),
                            child: Image.asset("assets/images/ellipse.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 22,
                              left: 12,
                              right: 50,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Raden Rosyd Aqbar ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Setiyanto Merpaung",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text("Digital Marketing"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.red,
                              ),
                              label: const Text(
                                "Ikuti",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xffFFFFFF)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
