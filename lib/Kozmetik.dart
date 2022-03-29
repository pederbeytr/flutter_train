import 'dart:html';
import 'dart:js';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: Kozmetik()));
}

//yukarda home sağında const var
class Kozmetik extends StatelessWidget {
  List<Map> kate = [
    {"isim": "25Tl=>20Tl", "foto": "assets/images/tras.PNG","sayfa": "Gratis :Gillette Fusion5 ProGlide"},
    {"isim": "45Tl=>34Tl", "foto": "assets/images/kop.PNG","sayfa": "Gratis: Arko Men Tıraş Köpüğü "},
    {"isim": "42Tl=>39Tl", "foto": "assets/images/far.PNG","sayfa": "Gratis: LYKD 9'lu Far Paleti"},
    {"isim": "169Tl=>139Tl", "foto": "assets/images/golge.PNG","sayfa" : "Cosmetika: Pastel Profashion Nude Single"},
    {"isim": "139Tl=>97Tl", "foto": "assets/images/ru.PNG","sayfa": "Gratis: Cecile Coco Nude "},
    {"isim": "132Tl=>93Tl", "foto": "assets/images/maskara.PNG","sayfa": "Cosmetica: Golden Rose Nude Look Full"},
    {"isim": "15Tl=>13Tl", "foto": "assets/images/nude1.PNG","sayfa": "Cosmetica: LYKD Mat Ruj 114"},
    {"isim": "14Tl=>11Tl", "foto": "assets/images/palet.PNG","sayfa": "Gratis: wet n wild Color Icon Eyeshadow  "},
  ];

  //const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İndirim Dünyası',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.greenAccent, Colors.orange])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text(
              "İndirim Dünyası",
              style: TextStyle(
                fontSize: 40,
                fontStyle: FontStyle.italic,
                color: Colors.greenAccent,
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //geri ikonu
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 600),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        shadowColor: Colors.transparent,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.3)),
                        minimumSize: Size(20, 10),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => second()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 26,
                  ),

                  //katorigriler

                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Kozmetik",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 10,
                      children: kate.map((Map kate) {
                        return buildKate(kate["isim"], kate["foto"],kate["sayfa"]);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//////////orjinallllllllllll 2222222222////

Widget buildKate(String title, String foto, String sayfa) {
  return Container(
    padding: EdgeInsets.all(50),
    margin: EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ]),
    child: Column(
      children: [
        Text(sayfa,style: TextStyle(fontSize: 15),),
        SizedBox(height: 15,),
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(foto)
              as ImageProvider,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),

        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
