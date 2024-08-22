import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: <Widget>[
          News(),
          Footer(),
        ],
      ),
    );
  }
}

//News
class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 1500,
      height: 1200,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
      child: Column(
        children: [
          Text(
            'Berita',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          Container(
            height: 2,
            width: 150,
            color: Colors.black,
            margin: EdgeInsets.only(top: 8),
          ),
          SizedBox(
            height: 30,
          ),

          //
          Row(
            children: [
              Image(
                image: AssetImage("assets/Desa/Berita.png"),
                width: 229,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Desa Margalaksana meraih gelar juara\n'
                    'tingkat kabupaten Sumedang',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('25 Juli 2024'),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 30,
          ),

          //
          Row(
            children: [
              Image(
                image: AssetImage("assets/Desa/berita.png"),
                width: 229,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Desa Margalaksana meraih gelar juara\n'
                    'tingkat kabupaten Sumedang',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('25 Juli 2024'),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 30,
          ),

          //
          Row(
            children: [
              Image(
                image: AssetImage("assets/Desa/berita.png"),
                width: 229,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Desa Margalaksana meraih gelar juara\n'
                    'tingkat kabupaten Sumedang',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('25 Juli 2024'),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 30,
          ),

          //
          Row(
            children: [
              Image(
                image: AssetImage("assets/Desa/berita.png"),
                width: 229,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Desa Margalaksana meraih gelar juara\n'
                    'tingkat kabupaten Sumedang',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('25 Juli 2024'),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          SizedBox(
            height: 30,
          ),

          //
          Row(
            children: [
              Image(
                image: AssetImage("assets/Desa/berita.png"),
                width: 229,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text(
                    'Desa Margalaksana meraih gelar juara\n'
                    'tingkat kabupaten Sumedang',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text('25 Juli 2024'),
                    ],
                  ),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
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
