// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/Logo.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';
import 'package:flutter_lms/Feature/welcome/views/welcome.dart';

class Tadres extends StatelessWidget {
  const Tadres({super.key});

  @override
  Widget build(BuildContext context) {
    _showdilog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              body: BackdropFilter(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12, right: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/img/no-close.png",
                            height: 31,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              width: 393,
                              height: 632,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  end: Alignment(0.95, -0.31),
                                  begin: Alignment(-0.95, 0.31),
                                  colors: [
                                    Color(0xED5650DE),
                                    Color(0xD8F869D5)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/img/notification.png',
                                      width: 196,
                                    ),
                                    Text(
                                      "لا توجد اشعارات ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "wolfexx",
                                        fontSize: 17,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/berg.png',width: 23,),
              ],
            ),
          );
        }),
        title: Image.asset(
          constant().logo,
          height: 40,
        ),
        centerTitle: true,
        actions: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, right: 10),
              child: GestureDetector(
                onTap: () {
                  _showdilog();
                },
                child: Image.asset(
                  "assets/img/no-open.png",
                  height: 31,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
        iconTheme: IconThemeData(
          color: const Color.fromRGBO(82, 63, 237, 1),
        ),
      ),
      drawer: Drawerr(),
      floatingActionButton: FloatingActionButtonn(),
      backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
      body: SingleChildScrollView(
        child: Column(

          children: [
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Welcome();
                                  }));
                            },
              child: Padding(
                padding: const EdgeInsets.only(right: 10,bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return Welcome();
                                  }));
                            },
                      child: Text(
                        'العودة',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "wolfexx"),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_sharp,
                      size: 33,
                      color: Color.fromRGBO(68, 54, 189, 1),
                    ),
                  ],
                ),
              ),

            ),



// أعضاء هيئة التدريس
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 17,bottom:26 ),
                  child: Text(
                    "أعضاء هيئة التدريس",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "wolfex",
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
// محمد سامي
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 29,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 49, bottom: 2),
                                  child: Text(
                                    'ا.م',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'محمد سامي',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 82,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc2.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

//منال البلقاسي
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 15,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 52, bottom: 2),
                                  child: Text(
                                    'ا.م.د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'منال البلقاسي',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 72,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc1.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

//ريهام عيسي
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 26,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40, bottom: 2),
                                  child: Text(
                                    'ا.م.د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'ريهام عيسي',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 86,right: 15),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc5.png',
                                width: 160,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// عمرو الشوري
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 22,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 45, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'عمرو الشوري',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc6.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

//أحمد رضوان
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 38, bottom: 2),
                                  child: Text(
                                    'ا.م.د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'أحمد رضوان',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc4.png',
                                height: 108,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// أيمن أبو النضر
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 21,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 47, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'أيمن أبو النضر',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc7.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// محمد راضى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 35,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 33, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'محمد راضى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc8.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// عبد الحميد العيسوى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 3,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 65, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'عبد الحميد العيسوى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9.5,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc9.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// مصطفى حسنى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 58, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'مصطفى حسنى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc10.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// محمد الغندور
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 23,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 45, bottom: 2),
                                  child: Text(
                                    "ا.م.د",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'محمد الغندور',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 86,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc11.png',
                                height: 113,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// صلاح عبد الحي
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 60, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'صلاح عبد الحي',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 82,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc3.png',
                                height: 108,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

//  محمد عثمان
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 28,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 52, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'محمد عثمان',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'assets/img/doc19.png',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// محمد الشوادفى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'محمد الشوادفى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 90,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc12.png',
                                height: 108,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// هناء خليل
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 41,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'هناء خليل',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc13.png',
                                height: 108,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// آمال ضيف
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 38,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 45, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'آمال ضيف',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc14.png',
                                height: 110,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// أميرة العطار
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 27,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 55, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'أميرة العطار',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc15.png',
                                height: 110,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// منى موافى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 37,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 44, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'منى موافى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc16.png',
                                height: 110,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

// أدهم البرماوى
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 22,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 60, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'أدهم البرماوى',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc17.png',
                                height: 110,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

//  رمضان شمس الدين
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 98,
                      height: 184,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFF474BF5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 5,
                            top: 22,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 75, bottom: 2),
                                  child: Text(
                                    '/د',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'wolfex',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'رمضان شمس الدين',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                    fontFamily: 'wolfex',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -5,
                            top: 50,
                            child: Container(
                              width: 113,
                              height: 113,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://f.top4top.io/p_2895d73ac1.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(21),
                                    bottomRight: Radius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 87,
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/doc18.png',
                                height: 110,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //المنصة
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 13, 25),
              child: Text(
                "المنصة التعليمية للمعهد العالي للإدارة وتكنولوجيا المعلومات بكفر الشيخ",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "wolfexx",
                  fontSize: 18,
                ),
              ),
            ),

            //  الوصف
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 13, 20),
              child: Text(
                "التطوّر المستمر للتكنولوجيا يعني التطوّر المستمر لتصميم  تطبيقات الموبايل الفارق بين مقدمي خدمات الويب المختلفة هو إنشاء موقع إحترافي عالي الجودة يميزك بين منافسيك في المجال نعمل داخل Team 7A  وفي أذهاننا تقديم أفضل تجربة إستخدام ممكنة لك عبر تمكينك من التحكم في موقعك عبر لوحة تحكم، وفي تقديم أفضل تجربة إستخدام لزوارك عبر توفير أسهل وأفضل أسلوب تصفح لصفحات الموقع المختلفة.",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  height: 1.5,
                  fontFamily: 'wolfexx',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
