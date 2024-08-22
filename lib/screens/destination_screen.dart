import 'package:flutter/material.dart';
import 'package:testt/screens/tapal_kuda.dart';
import 'package:testt/screens/kampung_ladang.dart';
import 'package:testt/screens/layout_screen.dart';
import 'package:testt/screens/vilaa_resto.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationScreen extends StatelessWidget {
  const DestinationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
      body: Column(
        children: <Widget>[
          Destinasi(),
          Footer(),
        ],
      ),
    );
  }
}

//Kampung Ladang
class Destinasi extends StatelessWidget {
  const Destinasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 700,
      width: 1500,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Text(
            'Destinasi Wisata',
            style: TextStyle(fontSize: 24, color: Colors.black),
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
          Row(
            children: <Widget>[
              SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                width: 400,
                height: 470,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage("assets/KampungLadang/Taman.jpg"),
                          width: 378,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Kampoeng Ladang',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Kampoeng Ladang adalah sebuah rumah makan khas Sunda yang diolah dari'
                        'bahan bahan segar hasil dari bumi lokal. Di Kampoeng Ladang,'
                        'Anda bisa menikmati berbagai sajian khas seperti nasi liwet, ikan bakar,'
                        'pepes, karedok, hingga sambal terasi',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Senin-Minggu')
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 10,
                          ),
                          Text('08.00-17.00'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () => {
                                    launchUrl(
                                      Uri.parse(
                                          'https://maps.app.goo.gl/YXBFV6ZprvP2Q2xZ6'),
                                    ),
                                  },
                              child: Text('Lokasi'))
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () => {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => KampungLadang(),
                                      ),
                                    )
                                  },
                              child: Icon(Icons.arrow_forward_sharp)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
              SizedBox(width: 20),

              //Tapal Kuda
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey),
                width: 400,
                height: 470,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage("assets/TapalKuda/Home1.jpg"),
                          width: 378,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Cafe Tapal Kuda',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Kopi Tapal Kuda adalah sebuah kafe yang menawarkan pengalaman'
                        'menikmati kopi yang tak terlupakan dengan suasana yang unik dan hangat.'
                        'Terletak di lokasi strategis dengan pemandangan yang memikat, menciptakan'
                        ' atmosfer yang berbeda dari kafe-kafe lainnya.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Senin-Minggu'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 10,
                          ),
                          Text('14.00-21.00'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () => {
                                    launchUrl(
                                      Uri.parse(
                                          'https://maps.app.goo.gl/ue1eBB1frMBwZBjd6'),
                                    ),
                                  },
                              child: Text('Lokasi')),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () => {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TapalKuda(),
                                      ),
                                    )
                                  },
                              child: Icon(Icons.arrow_forward_sharp)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),

              //Villa Resto
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                width: 400,
                height: 470,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          image: AssetImage("assets/Villa/Home1.jpg"),
                          width: 378,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          '95 Farm Villa Resto',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '95 Farm Villa Resto adalah destinasi kuliner yang'
                        ' menawarkan pengalaman makan unik di tengah-tengah keindahan'
                        'alam pedesaan. Restoran ini mengusung konsep villa dengan sentuhan pertanian,'
                        'menciptakan suasana yang hangat dan menyegarkan bagi setiap pengunjung',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.calendar_month_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Senin-Minggu'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 10,
                          ),
                          Text('08.00-21.00'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                              onTap: () => {
                                    launchUrl(
                                      Uri.parse(
                                          'https://maps.app.goo.gl/1H9jD21QZyvkqneU7'),
                                    ),
                                  },
                              child: Text('Lokasi'))
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () => {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VillaResto(),
                                      ),
                                    )
                                  },
                              child: Icon(Icons.arrow_forward_sharp)),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
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
