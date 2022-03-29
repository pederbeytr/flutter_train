import 'dart:html';
import 'dart:js';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: Spor()));
}

//yukarda home sağında const var
class Spor extends StatelessWidget {
  List<Map> kate = [
    {"isim": "1800Tl=>1500Tl", "foto": "assets/images/cadir.jpg","sayfa": "Decathlon: Direkli Kamp Çadırı"},
    {"isim": "7200Tl=>7000Tl", "foto": "assets/images/bisiklet.jpg","sayfa": "Decathlon: Dağ Bisikleti - 9 Vites"},
    {"isim": "840Tl=>800Tl", "foto": "assets/images/top.jpg","sayfa": "Decathlon: NBA AUTHENTIC WILSON Basketbol Topu"},
    {"isim": "120Tl=>100Tl", "foto": "assets/images/basket.jpg","sayfa" : "Decathlon: NBA Golden States Warriors Basketbol Dirsekliği"},
    {"isim": "350Tl=>300Tl", "foto": "assets/images/barfix.jpg","sayfa": "Decathlon: Barfiks Demiri 900"},
    {"isim": "350Tl=>330Tl", "foto": "assets/images/pro2.jpg","sayfa": "Decathlon: BİGJOY BIGWHEY CLASSIC PROTEİN TOZU"},
    {"isim": "180Tl=>130Tl", "foto": "assets/images/direnc.jpg","sayfa": "Decathlon: Direnç Bandı - 60 kg - TRAINING BAND"},
    {"isim": "110Tl=>100Tl", "foto": "assets/images/olta.jpg","sayfa": "Decathlon: 2802 Bot Kamışı 80 cm"},
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
                      "Spor",
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
