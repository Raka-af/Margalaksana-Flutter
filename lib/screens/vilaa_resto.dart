import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class VillaResto extends StatelessWidget {
  const VillaResto({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: [
          Villa(),
          Footer(),
        ],
      ),
    );
  }
}

//Villa
class Villa extends StatelessWidget {
  const Villa({super.key});

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
            '95 Farm Villa Resto',
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
              height: 820,
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
                        image: AssetImage("assets/Villa/Home.jpg"),
                        fit: BoxFit.cover,
                        width: 700,
                        height: 313,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' 95 Farm Villa Resto adalah destinasi kuliner yang menawarkan'
                      'pengalaman makan unik di tengah-tengah keindahan alam pedesaan.'
                      'Terletak di kawasan yang tenang dan asri, restoran ini mengusung'
                      ' konsep villa dengan sentuhan pertanian, menciptakan suasana yang'
                      'hangat dan menyegarkan bagi setiap pengunjung. Interior restoran'
                      'dirancang dengan nuansa pedesaan yang elegan, menggunakan elemen'
                      'kayu dan tanaman hijau yang melimpah. Di sini, para tamu dapat'
                      'menikmati makanan mereka di ruang makan yang luas dan nyaman,'
                      'dengan pemandangan indah ladang dan taman yang menenangkan.'
                      'Selain itu, tersedia juga area outdoor yang memungkinkan pengunjung'
                      'untuk menikmati udara segar sambil menikmati hidangan mereka.',
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
                            image: AssetImage("assets/Villa/Taman.jpg"),
                            fit: BoxFit.cover,
                            width: 200,
                            height: 141,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage("assets/Villa/Liwet.jpeg"),
                            fit: BoxFit.cover,
                            width: 200,
                            height: 141,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage("assets/Villa/Tenda.jpg"),
                            fit: BoxFit.cover,
                            width: 200,
                            height: 141,
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
