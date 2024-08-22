import 'package:flutter/material.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: <Widget>[
          DataJenisKelamin(),
          DataAgama(),
          DataPendidikan(),
          Footer(),
        ],
      ),
    );
  }
}

//Data Jenis Kelamin
class DataJenisKelamin extends StatelessWidget {
  const DataJenisKelamin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(77, 77, 77, 77),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 1214,
          height: 316,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: <Widget>[
              Text(
                'Data Jenis Kelamin',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 2,
                width: 250,
                color: Colors.black,
                margin: EdgeInsets.only(top: 8),
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Laki Laki',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Penduduk/cowo.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Perempuan',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Penduduk/cewe.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Jumlah',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Penduduk/Jumlah.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}

//Data Agama
class DataAgama extends StatelessWidget {
  const DataAgama({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(77, 77, 77, 77),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 1214,
          height: 316,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: <Widget>[
              Text(
                'Data Agama',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 2,
                width: 250,
                color: Colors.black,
                margin: EdgeInsets.only(top: 8),
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Islam',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Agama/Islam.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Kristen',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Agama/Kristen.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Buddha',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Agama/Buddha.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}

//Data Pendidikan
class DataPendidikan extends StatelessWidget {
  const DataPendidikan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(77, 77, 77, 77),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 1214,
          height: 560,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: <Widget>[
              Text(
                'Data Pendidikan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 2,
                width: 250,
                color: Colors.black,
                margin: EdgeInsets.only(top: 8),
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'TK/Paud',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Pendidikan/TK.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'SD',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Pendidikan/SD.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(217, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 202,
                    height: 210,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'SMP',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                        Image(
                          image: AssetImage("Assets/Pendidikan/SMP.png"),
                          width: 120,
                          height: 115,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(217, 217, 217, 217),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 202,
                        height: 210,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'SMA',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image(
                              image: AssetImage("Assets/Pendidikan/SMA.png"),
                              width: 120,
                              height: 115,
                            ),
                            Text(
                              '1000',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(217, 217, 217, 217),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 202,
                        height: 210,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Sarjana',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image(
                              image: AssetImage("Assets/Pendidikan/S1.png"),
                              width: 120,
                              height: 115,
                            ),
                            Text(
                              '1000',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(217, 217, 217, 217),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 202,
                        height: 210,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Magister',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image(
                              image: AssetImage("Assets/Pendidikan/S2.png"),
                              width: 120,
                              height: 115,
                            ),
                            Text(
                              '1000',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ],
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
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
