import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: <Widget>[
          HeroSection(),
          FacilitySection(),
          Footer(),
          // Tambahkan lebih banyak halaman di sini jika diperlukan
        ],
      ),
    );
  }
}

//Hero Section
class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage("assets/Desa/Margalaksana.jpg"),
              width: screenWidth * 1,
              height: screenHeight * 0.9,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: screenHeight * 0.3,
              left: screenWidth * 0.2,
              right: screenWidth * 0.2,
              child: Text(
                'Selamat Datang\n'
                ' Website Desa Margalaksana',
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.black12,
                  fontSize: screenHeight * 0.02 + screenWidth * 0.03,
                  color: Colors.white,
                  fontFamily: 'SFUi',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Facility Section
class FacilitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(70),
      color: Colors.white,
      width: 1500,
      height: 500,
      child: Column(
        children: <Widget>[
          Text(
            'Fasilitas Desa',
            style: TextStyle(
              fontSize: screenWidth * 0.01 + screenHeight * 0.03,
              color: Colors.black,
              fontFamily: 'SFUi',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage("assets/Desa/Margalaksana.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Gedung Desa Margalaksana',
                      style: TextStyle(
                          fontSize: screenHeight * 0.01 + screenWidth * 0.01,
                          color: Colors.black,
                          fontFamily: 'SFUi'),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage("assets/Desa/Margalaksana.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Gedung Perpustakaan',
                      style: TextStyle(
                          fontSize: screenHeight * 0.01 + screenWidth * 0.01,
                          color: Colors.black,
                          fontFamily: 'SFUi'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenHeight * 0.01 + screenWidth * 0.01,
              ),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage("assets/Desa/Margalaksana.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Polindes',
                      style: TextStyle(
                          fontSize: screenHeight * 0.01 + screenWidth * 0.01,
                          fontFamily: 'SFUi',
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
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
                fontFamily: 'SFUi',
                fontWeight: FontWeight.w500),
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
                    color: Colors.white,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w500),
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
