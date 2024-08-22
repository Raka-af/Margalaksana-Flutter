import 'package:flutter/material.dart';
import 'package:testt/screens/data_screen.dart';
import 'package:testt/screens/destination_screen.dart';
import 'package:testt/screens/gallery_screen.dart';
import 'package:testt/screens/home_screen.dart';
import 'package:testt/screens/news_screen.dart';
import 'package:testt/screens/profile_screen.dart';
import 'package:testt/screens/struktur_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Flexible(
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("assets/Desa/Logo.jpg"),
                width: 30,
                height: 30,
              ),
              Container(
                child: Text(
                  'Margalaksana',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: 450,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    ),
                    child: Flexible(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'SFUi',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                ),
                child: Text(
                  'Profil',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => StructureScreen()),
                ),
                child: Text(
                  'Struktur',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DataScreen()),
                ),
                child: Text(
                  'Data',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DestinationScreen()),
                ),
                child: Text(
                  'Destinasi',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => NewsScreen()),
                ),
                child: Text(
                  'Berita',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryScreen()),
                ),
                child: Text(
                  'Galeri',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SFUi',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }
}
