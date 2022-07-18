import 'package:flutter/material.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 189, 173),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 75,
                child: Text(
                  "Admin Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 300,
                  child: Image.asset(
                    "assets/wp.jpg",
                    fit: BoxFit.contain,
                  )),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: const Text(
                  "Nim     : 20190801050  \nNama  : M Tholhah Mansur",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 150),
              ),
              const Text(
                "UAS PEMROGRAMAN MOBILE ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
