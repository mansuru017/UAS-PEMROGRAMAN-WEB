import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About '),
        backgroundColor: const Color.fromARGB(255, 3, 189, 173),
      ),
      backgroundColor: const Color.fromARGB(255, 3, 189, 173),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 250),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SizedBox(
                          height: 150,
                          child: Text(
                            "Aplikasi ini adalah aplikasi sederhana menggunakan CRUD untuk membuat data dosen. Aplikasi ini berisi biodata dosen dalam mengajar mahasiswa.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ]),
        ),
      ),
    );
  }
}
