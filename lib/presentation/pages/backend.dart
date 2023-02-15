import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BackendTest extends StatefulWidget {
  const BackendTest({super.key});

  @override
  State createState() => _Backend();
}

class _Backend extends State<BackendTest> {
  List<dynamic> dataJSON = [];

  Future<List> fetchData() async {
    var url = Uri.https("jsonplaceholder.typicode.com", "/posts");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((value) {
      setState(() {
        dataJSON = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DATA BACKEND"),
      ),
      body: ListView.builder(
        itemCount: dataJSON.length,
        itemBuilder: (context, i) {
          return Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Card(
              child: Column(
                children: [
                  Text(
                    "${dataJSON[i]['id']} | ${dataJSON[i]['title']}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    dataJSON[i]['body'],
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
