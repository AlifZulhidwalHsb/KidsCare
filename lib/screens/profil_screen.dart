import 'package:flutter/material.dart';
import 'package:kidscare/screens/home_screens.dart';

/// Widget untuk halaman Profil pengguna
class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan tombol back manual
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: const Color(0xFF1A3A6F),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi kembali ke halaman utama
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreens()),
            );
          },
        ),
      ),

      // Konten utama dari halaman Profil
      body: const Center(
        child: Text(
          "Ini halaman Profil",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
