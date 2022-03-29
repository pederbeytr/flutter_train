import 'dart:html';
import 'dart:js';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: Vergi()));
}

//yukarda home sağında const var
class Vergi extends StatelessWidget {
  List<Map> kate = [
    {"isim": "%550 ÖTV=>%1 ÖTV", "foto": "assets/images/rolly.jpg","sayfa": "Araba/Motor Vergi İndirimi"},
    {"isim": "%15 KDV=>%1 KDV", "foto": "assets/images/fatura.png","sayfa": "Faturadan Vergi Düşme (Şirket üzerine)"},
    {"isim": "%880 ÖTV=>%1 ÖTV", "foto": "assets/images/yat.jpg","sayfa": "Özel Yat Vergi İndirimi"},
    {"isim": "%870 ÖTV=>%1 ÖTV", "foto": "assets/images/jet.jpg","sayfa" : "Özel Jet Vergi İndirimi"},
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
                      "Vergi",
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
