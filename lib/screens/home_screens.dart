import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidscare/screens/tanya_ai_screen.dart';
import 'package:kidscare/screens/artikel_screen.dart';
import 'package:kidscare/screens/konsultasi_screen.dart';
import 'package:kidscare/screens/profil_screen.dart';

// Widget utama untuk tampilan Home Screen aplikasi
class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengatur style sistem UI (seperti status bar) menjadi gelap
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      backgroundColor: const Color(0xFFE8F1FF), // Warna latar belakang layar
      body: SafeArea(
        // SafeArea agar konten tidak tertutup oleh notch/status bar
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul aplikasi
              const Text(
                "KidsCare: Solusi Pemantauan Kesehatan Anak",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1A3A6F),
                ),
              ),
              const SizedBox(height: 16),

              // Kartu informasi anak
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // Avatar anak
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    const SizedBox(width: 16),
                    // Informasi dasar anak
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ucup",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text("5 Tahun", style: TextStyle(fontSize: 16)),
                        Text("16,5 kg", style: TextStyle(fontSize: 16)),
                        Text("102,3 cm", style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Grid menu utama
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.3, // perbandingan ukuran item
                physics: const NeverScrollableScrollPhysics(), // non-scrollable
                children: const [
                  // Masing-masing menu sebagai tombol
                  MenuButton(
                    icon: Icons.notifications,
                    label: "Pengingat\nImunisasi",
                    color: Colors.amber,
                  ),
                  MenuButton(
                    icon: Icons.chat_bubble,
                    label: "Konsultasi",
                    color: Colors.blue,
                  ),
                  MenuButton(
                    icon: Icons.book,
                    label: "Artikel\nEdukasi",
                    color: Colors.orange,
                  ),
                  MenuButton(
                    icon: Icons.show_chart,
                    label: "Riwayat\nTumbuh Anak",
                    color: Colors.teal,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Tombol menuju riwayat kesehatan
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Text(
                      "Riwayat Kesehatan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(), // untuk mendorong icon ke ujung kanan
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF1A3A6F), // warna saat aktif
        unselectedItemColor: Colors.grey, // warna saat tidak aktif
        currentIndex: 2, // Sesuaikan dengan index halaman aktif
        onTap: (index) {
          Widget destination;

          switch (index) {
            case 0:
              destination = const HomeScreens(); // Beranda
              break;
            case 1:
              destination = const KonsultasiScreen(); // Konsultasi
              break;
            case 2:
              destination = const TanyaAIScreen(); // TanyaAI
              break;
            case 3:
              destination = const ArtikelScreen(); // Artikel
              break;
            case 4:
              destination = const ProfilScreen(); // Profil
              break;
            default:
              return;
          }

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: 'Catatan'),
          BottomNavigationBarItem(icon: Icon(Icons.help_outline), label: 'TanyaAI'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Artikel'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),

    );
  }
}

// Komponen custom untuk tombol menu di halaman utama
class MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const MenuButton({
    required this.icon,
    required this.label,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: color), // ikon besar berwarna
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
