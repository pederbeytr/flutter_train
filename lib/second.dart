import 'dart:js';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/Elektronik.dart';
import 'package:vizedeneme1/Giyecek.dart';
import 'package:vizedeneme1/Ilac.dart';
import 'package:vizedeneme1/Kozmetik.dart';
import 'package:vizedeneme1/Oyunprogram.dart';
import 'package:vizedeneme1/Spor.dart';
import 'package:vizedeneme1/Vergi.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/market.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: const second()));
}

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(left: 100.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 700),
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
                                MaterialPageRoute(builder: (context) => first()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black87,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      //1. sütun
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),

                          //kozmetik yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Kozmetik()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Kozmetik',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/kozmetik.png')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          //market yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => market()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Market',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/market.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //2. satır
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),

                          //giyecek yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Giyecek()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Giyim',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/zara.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          //elektronik yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Elektronik()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Elektronik',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/tesla.png')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //3. satır
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),

                          //oyun program yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Oyunprogram()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Oyun/Yazılım',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/csgo.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          //ilaç yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Ilac()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Sağlık',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/ilac.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //4. satır
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),

                          //spor yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.greenAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Spor()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Spor',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/protein.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),

                          //vergi yeri
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent,
                              onPrimary: Colors.white,
                              shadowColor: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.3)),
                              minimumSize: Size(300, 100),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Vergi()));
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  'vergi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/vergi.jpg')
                                      as ImageProvider,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget build1BaslikArkaPlan() {
  return Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.blue])),
    child: Padding(
      padding: const EdgeInsets.only(
          top: 24.0, bottom: 10.0, left: 13.0, right: 13.0),
      child: Text(
        "İndirim Dünyası",
        style: TextStyle(
          fontSize: 40,
          foreground: Paint()
            ..shader = ui.Gradient.linear(
                const Offset(30, 25), const Offset(175, 25), <Color>[
              Colors.green,
              Colors.white,
            ]),
        ),
      ),
    ),
  );
} //boş

Widget build1Button() {
  return Padding(
    padding: EdgeInsets.only(top: 16),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(right: 36, top: 14, left: 24, bottom: 18),
      decoration: BoxDecoration(
          color: Colors.white54, borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Üst yazı 1",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Text(
                "Alt yazı 1",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 12,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          Image.asset('assets/images/raptor.jpg'),
        ],
      ),
    ),
  );
} //boss

Widget buildSalla() {
  return Text(
    "Aşağıdaki Bilgileri Doldurunuz",
    style: TextStyle(
        color: Colors.blueGrey, fontSize: 12, fontWeight: FontWeight.w100),
  );
}

//////////orjinallllllllllll////
