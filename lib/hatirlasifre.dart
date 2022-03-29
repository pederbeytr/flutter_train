import 'dart:js';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:vizedeneme1/main.dart';
import 'package:vizedeneme1/second.dart';

void main() {
  runApp(MaterialApp(home: const hatirlasifre()));
}

class hatirlasifre extends StatelessWidget {
  const hatirlasifre({Key? key}) : super(key: key);

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        right: 36, top: 30, left: 24, bottom: 18),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 2),
                            // Image.asset('assets/images/logo2.png'),
                            SizedBox(height: 30),

                            Text(
                              "Sakin ol ! Yardım için burdayız :)",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10), //altına text

                            Text(
                              "Lütfen bilgileri eksizsiz doldurunuz.",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
                            ),
                            SizedBox(height: 30),

                            Row(
                              children: [
                                Container(
                                  width: 400,
                                  height: 53,
                                  color: Colors.transparent,
                                  alignment: Alignment.topLeft,
                                  //padding: EdgeInsets.all(10),
                                  //margin: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1, top: 1, bottom: 0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        hintText: "Kullanıcı adı giriniz",
                                        filled: true,
                                        fillColor: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ), //kullanıcı adı kısmı
                            Row(
                              children: [
                                Container(
                                  width: 400,
                                  height: 53,
                                  color: Colors.transparent,
                                  alignment: Alignment.topLeft,
                                  //padding: EdgeInsets.all(10),
                                  //margin: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1, top: 1, bottom: 0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        hintText: "E-mail Adresinizi giriniz",
                                        filled: true,
                                        fillColor: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  width: 400,
                                  height: 53,
                                  color: Colors.transparent,
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1, top: 0, bottom: 0),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        hintText: "Telefon numarınızı giriniz",
                                        filled: true,
                                        fillColor: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ), //şifre kısmı


                            //şifremi unuttum
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.greenAccent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.3)),
                                    minimumSize: Size(200, 60),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => first()));
                                  },
                                  child: Text('Giriş Ekranına Dön'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    onPrimary: Colors.white,
                                    shadowColor: Colors.greenAccent,
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(20.3)),
                                    minimumSize: Size(200, 60),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => second()));
                                  },
                                  child: Text('Şifreyi Sıfırla ve Giriş Yap'),
                                )
                              ],
                            ), //Giriş buttonu
                          ],
                        ),
                      ],
                    ),
                  ),
                ), //giriş ekranı ve banner
                //build1Button(), //onay butonu
              ],
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
