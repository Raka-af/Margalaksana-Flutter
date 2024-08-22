import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class StructureScreen extends StatelessWidget {
  const StructureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: [
          OrganizationChart(),
          Footer(),
        ],
      ),
    );
  }
}

// Struktur Organisasi
class OrganizationChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 1500,
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Center(
            child: OrganizationBox(
              title: 'Euis Mulyati',
              title2: 'Kepala Desa',
              imagePath:
                  'assets/Struktur/Kepala Desa.jpg', // Ganti dengan path gambar lokal
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OrganizationBox(
                title: 'Jujun Junaedi',
                title2: 'Sekretaris Desa',
                imagePath:
                    'assets/Struktur/Sekertaris.jpg', // Ganti dengan path gambar lokal
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OrganizationBox(
                title: 'Kusnadi',
                title2: 'Kasi Pemerintahan',
                imagePath:
                    'assets/Struktur/Kasi Pemerintahan.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Silvi Desiyanti',
                title2: 'Kasi Pelayanan',
                imagePath:
                    'assets/Struktur/Kasi Pelayanan.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Neng Neli Helmiawati',
                title2: 'Kasi Kesejahteraan',
                imagePath:
                    'assets/Struktur/Kasi Kesejahteraan.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Mulyana',
                title2: 'Kasi Perencanaan',
                imagePath:
                    'assets/Struktur/Kaur Perencanaan.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Sinta Puspitasari',
                title2: 'Kaur Keuangan',
                imagePath:
                    'assets/Struktur/Kaur Keuangan.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Enang Mulyana',
                title2: 'Kaur TU dan Umum',
                imagePath:
                    'assets/Struktur/Kaur TU dan Umum.jpg', // Ganti dengan path gambar lokal
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OrganizationBox(
                title: 'Chotibul Fajar',
                title2: 'Kadus 1',
                imagePath:
                    'assets/Struktur/Kadus 1.jpg', // Ganti dengan path gambar lokal
              ),
              OrganizationBox(
                title: 'Sugirman',
                title2: 'Kadus 2',
                imagePath:
                    'assets/Struktur/Kadus 2.jpg', // Ganti dengan path gambar lokal
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Organization Box
class OrganizationBox extends StatelessWidget {
  final String title;
  final String title2;
  final String imagePath;

  OrganizationBox(
      {required this.title, required this.title2, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath), // Menggunakan gambar dari aset
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
        SizedBox(height: 4), // Jarak antara gambar dan teks
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Text(
          title2,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

//Footer
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    var media = MediaQuery.of(context).size;
    return Container(
      color: Colors.black54,
      width: screenWidth * 1,
      height: screenHeight * 0.2,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: media.width * 0.02,
          ),
          Text(
            'Desa Margalaksana \n Jl. Kareumbi Desa Margalaksana Kec. Sumedang Selatan \n Kabuaten Sumedang Provinsi Jawa Barat \n Kode Pos 45311 \n Email:',
            style: TextStyle(
              fontSize: screenWidth * 0.007 + screenHeight * 0.01,
              color: Colors.white,
            ),
          ),
          (MediaQuery.of(context).size.width > 750)
              ? SizedBox(width: screenWidth * 0.45)
              : SizedBox(width: screenWidth * 0.25),
          Column(
            children: <Widget>[
              SizedBox(
                height: media.height * 0.03,
              ),
              Text(
                'Media Sosial',
                style: TextStyle(
                    fontSize: screenWidth * 0.007 + screenHeight * 0.01,
                    color: Colors.white),
              ),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://www.instagram.com/desamargalaksana_/')),
                    child: Image(
                      image: AssetImage("assets/Desa/social.png"),
                      width: screenWidth * 0.045,
                      height: screenHeight * 0.045,
                    ),
                  ),
                  InkWell(
                    onTap: () => launchUrl(Uri.parse(
                        'https://web.facebook.com/profile.php?id=61557585922362')),
                    child: Image(
                      image: AssetImage("assets/Desa/facebook.png"),
                      width: screenWidth * 0.045,
                      height: screenHeight * 0.045,
                    ),
                  ),
                ],
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
