import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class TapalKuda extends StatelessWidget {
  const TapalKuda({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: [
          Cafe(),
          Footer(),
        ],
      ),
    );
  }
}

//Tapal Kuda
class Cafe extends StatelessWidget {
  const Cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 1500,
      height: 1100,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Text(
            'Cafe Tapal kuda',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Container(
            height: 2,
            width: 250,
            color: Colors.black,
            margin: EdgeInsets.only(top: 8),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 770,
              height: 890,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(77, 77, 77, 77),
              ),
              child: Expanded(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage("assets/TapalKuda/Home1.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kopi Tapal Kuda adalah sebuah kafe yang menawarkan pengalaman'
                    'menikmati kopi yang tak terlupakan dengan suasana yang unik dan hangat.'
                    'Terletak di lokasi strategis dengan pemandangan yang memikat,'
                    'menciptakan atmosfer yang berbeda dari kafe-kafe lainnya. Di Kopi Tapal Kuda,'
                    'kami menyajikan berbagai jenis kopi spesial yang dibuat dari biji kopi pilihan'
                    'terbaik. Dari espresso yang kuat hingga latte yang lembut, setiap cangkir'
                    'kopi diseduh dengan teknik yang sempurna oleh barista berpengala'
                    'man kami. Selain itu, kami juga menawarkan beragam pilihan minuman non-kopi'
                    'seperti teh, cokelat panas, dan jus segar, serta berbagai kudapan lezat yang'
                    'cocok untuk menemani waktu santai Anda',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage("assets/TapalKuda/Home.jpg"),
                          fit: BoxFit.cover,
                          width: 200,
                          height: 267,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage("assets/TapalKuda/Kopi.jpg"),
                          fit: BoxFit.cover,
                          width: 200,
                          height: 112,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage("assets/TapalKuda/Night.jpg"),
                          fit: BoxFit.cover,
                          width: 250,
                          height: 187,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
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
