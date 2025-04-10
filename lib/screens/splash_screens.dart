import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidscare/screens/home_screens.dart';

/// SplashScreens adalah halaman pertama yang muncul saat aplikasi dibuka.
/// Halaman ini menampilkan gambar background selama beberapa detik,
/// lalu otomatis berpindah ke halaman HomeScreens.
class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();

    // Mengatur style status bar menjadi light (putih),
    // cocok untuk latar belakang gelap.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    // Menunda selama 3 detik, lalu navigasi ke halaman HomeScreens
    // dan menghapus semua halaman sebelumnya dari tumpukan (pushAndRemoveUntil).
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomeScreens(),
        ),
        (route) => false, // Hapus semua route sebelumnya.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Agar gambar background mengisi seluruh layar.
        children: [
          // Menampilkan gambar background.
          // Pastikan file 'assets/Background.png' sudah ditambahkan ke pubspec.yaml
          Image.asset(
            'assets/Background.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
