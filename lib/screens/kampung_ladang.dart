import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class KampungLadang extends StatelessWidget {
  const KampungLadang({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: [
          Ladang(),
          Footer(),
        ],
      ),
    );
  }
}

//Kampung Ladang
class Ladang extends StatelessWidget {
  const Ladang({super.key});

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
            'Kampung Ladang',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Container(
            width: 250,
            height: 2,
            color: Colors.black,
            margin: EdgeInsets.only(top: 8),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 750,
              height: 890,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(77, 77, 77, 77),
              ),
              child: Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage("assets/KampungLadang/Taman.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kampoeng Ladang adalah sebuah rumah makan khas Sunda yang menawarkan'
                      ' pengalaman kuliner yang autentik dan memanjakan lidah. Terletak di tengah'
                      'suasana pedesaan yang asri, Kampung Ladang menghadirkan berbagai hidangan tradisional Sunda'
                      'yang kaya rasa dan diolah dari bahan-bahan segar hasil bumi lokal.'
                      'Di Kampung Ladang, Anda bisa menikmati berbagai sajian khas seperti nasi liwet, ikan bakar,'
                      ' pepes, karedok, hingga sambal terasi yang pedas menggugah selera.'
                      ' Desain interior rumah makan ini mengusung konsep alam terbuka dengan penggunaan material alami'
                      ' seperti kayu dan bambu, menciptakan suasana nyaman dan menenangkan. Di sini, para tamu dapat '
                      'menikmati makanan sambil menikmati pemandangan sawah yang hijau',
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
                            image:
                                AssetImage("assets/KampungLadang/Pohon2.jpg"),
                            fit: BoxFit.cover,
                            width: 250,
                            height: 187,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage(
                                    "assets/KampungLadang/Liwet.jpg"),
                                fit: BoxFit.cover,
                                width: 150,
                                height: 84,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage(
                                    "assets/KampungLadang/Taman.jpg"),
                                fit: BoxFit.cover,
                                width: 200,
                                height: 90,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage("assets/KampungLadang/Pohon.jpg"),
                            fit: BoxFit.cover,
                            width: 150,
                            height: 266,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                    )
                  ],
                ),
              ),
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
