// ignore_for_file: unnecessary_null_comparison

import 'dart:async';
import 'dart:convert';

import 'package:data_dosen/listdata.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainController extends StatefulWidget {
  const MainController({Key? key}) : super(key: key);

  @override
  State<MainController> createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {
  String url = 'http://10.0.2.2/studi_kasus/getdata.php';

  Future<List> getData() async {
    final response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('DATA DOSEN'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FutureBuilder<List>(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              if (snapshot.hasData) {
                return DetailData(
                  list: snapshot.data ?? [],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}

class DetailData extends StatelessWidget {
  final List list;
  const DetailData({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return Container(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ListItemsData(
                            list: list,
                            index: i,
                          ))),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        list[i]['nama_dosen'],
                        style: const TextStyle(fontSize: 18),
                      ),
                      leading: const Icon(
                        Icons.person,
                        size: 50,
                      ),
                      subtitle: Text("${list[i]['prodi_dosen']}",
                          style: const TextStyle(fontSize: 13)),
                    ),
                  )));
        });
  }
}
