import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3/about_page.dart';
import 'package:tugas_pertemuan3/homepage.dart';
import 'package:tugas_pertemuan3/loginpage.dart'; // menambah import untuk LoginPage

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal, // Background berwarna teal untuk header
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.menu,
                  size: 50,
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  'Menu Utama',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.teal),
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.teal),
            title: const Text(
              'Tentang Kami',
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          const Divider(), // Garis pemisah antar item
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onTap: () {
              // Aksi logout: navigasi ke halaman LoginPage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Loginpage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
