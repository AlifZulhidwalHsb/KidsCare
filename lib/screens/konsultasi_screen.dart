import 'package:flutter/material.dart';
import 'package:kidscare/screens/home_screens.dart';

/// Widget untuk halaman Catatan Kesehatan
class KonsultasiScreen extends StatelessWidget {
  const KonsultasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan tombol kembali manual
      appBar: AppBar(
        title: const Text("Konsultasi"),
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

      // Isi utama dari halaman Konsultasi
      body: const Center(
        child: Text(
          "Ini halaman Konsultasi",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
