import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:data_dosen/about.dart';
import 'package:data_dosen/controller.dart';
import 'package:data_dosen/create.dart';
import 'package:data_dosen/profileadmin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navbar(),
  ));
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int currentIndex = 1;
  final screens = [const About(), const MainController(), const AdminProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 180, 252),
        onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => const CreateData()))),
        splashColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
