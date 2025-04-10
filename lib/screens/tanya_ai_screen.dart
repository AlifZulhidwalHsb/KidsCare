import 'package:flutter/material.dart';
import 'package:kidscare/screens/home_screens.dart';

/// Widget untuk halaman Tanya AI
class TanyaAIScreen extends StatelessWidget {
  const TanyaAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar di bagian atas halaman
      appBar: AppBar(
        title: const Text("Tanya AI"),
        backgroundColor: const Color(0xFF1A3A6F),
        foregroundColor: Colors.white,
        
        // Tombol kembali manual (leading)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigasi kembali ke halaman HomeScreens
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreens()),
            );
          },
        ),
      ),
      
      // Bagian utama tampilan (body)
      body: const Center(
        child: Text(
          "Ini halaman TanyaAI", // Isi utama halaman
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
