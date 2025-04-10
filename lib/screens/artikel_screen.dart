import 'package:flutter/material.dart';
import 'package:kidscare/screens/home_screens.dart';

/// Widget untuk halaman Artikel Edukasi
class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan tombol kembali
      appBar: AppBar(
        title: const Text("Artikel"),
        backgroundColor: const Color(0xFF1A3A6F),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi ke halaman HomeScreens
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreens()),
            );
          },
        ),
      ),

      // Isi utama dari halaman Artikel
      body: const Center(
        child: Text(
          "Ini halaman Artikel",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
