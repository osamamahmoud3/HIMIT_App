import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lms/Core/utils/Custom_noification_page.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';
import 'package:flutter_lms/Feature/welcome/views/welcome.dart';
import 'package:url_launcher/url_launcher.dart';
Future<void> lunchToWebsite(e) async {
  if (!await launchUrl(e)) {
    throw Exception('Could not launch $e');
  }
}
class Moshref extends StatefulWidget {
  const Moshref({super.key});

  @override
  State<Moshref> createState() => _MoshrefState();
}

class _MoshrefState extends State<Moshref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawerr(),
      floatingActionButton: const FloatingActionButtonn(),
      backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: Text(
                          'العودة',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: "wolfexx"),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const Welcome();
                        }));
                      },
                      child: const Icon(
                        Icons.chevron_right_sharp,
                        size: 32,
                        color: Color.fromRGBO(68, 54, 189, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 17.5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "إعداد Team 7A",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'wolfex',
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // أحمد ماهر

                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: GestureDetector(
                          onTap: () {
                                lunchToWebsite(Uri.parse(
                                    'https://www.facebook.com/AhmedWolfex'));
                              },
                          child: Container(
                            width: 98,
                            height: 184,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF474BF5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 20,
                                  top: 22,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Programmer',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'wolfex',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'أحمد ماهر',
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
                                    decoration: const ShapeDecoration(
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
                                    top: 50,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                lunchToWebsite(Uri.parse(
                                    'https://www.facebook.com/AhmedWolfex'));
                              },
                                      child: Image.asset(
                                        'assets/img/1.png',
                                        height: 400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      //يوسف شهاب

                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: GestureDetector(
                          onTap: () {
                                lunchToWebsite(Uri.parse(
                                    'https://www.facebook.com/yousef.shehab.7315'));
                              },
                          child: Container(
                            width: 98,
                            height: 184,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF474BF5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                            child: Stack(
                              children: [
                                const Positioned(
                                  left: 15,
                                  top: 22,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Ui Design',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'wolfex',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'يوسف شهاب',
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
                                    decoration: const ShapeDecoration(
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
                                    top: 50,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                lunchToWebsite(Uri.parse(
                                    'https://www.facebook.com/yousef.shehab.7315'));
                              },
                                      child: Image.asset(
                                        'assets/img/2.png',
                                        height: 400,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

// اسلام محمد
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 30,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'اسلام محمد',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 75,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/4.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

//احمد مصطفي رفعت 
                  Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 20,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'احمد مصطفي',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 55,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/12.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


//محمود عادل
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 30,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'محمود عادل',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 50,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/6.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

//  عبد الباري محمد
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 15,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'عبدالباري محمد',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 50,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/10.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

// محمد عبدالله
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 25,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'محمد عبدالله',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 40,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/3.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

//احمد عيد
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 50,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'أحمد عيد',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 50,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/5.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


// أحمد عبد المولى
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 12,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'أحمد عبد المولي',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 50,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/7.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

// جرجس نبيل
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 32,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'جرجس نبيل',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 14,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/8.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

//  علاء هاني
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 45,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'علاء هاني',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/9.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


// عبدالرحمن محمد
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 10,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'عبدالرحمن محمد',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 75,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/11.png',
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),


//  أحمد عبد الحسيب
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          width: 98,
                          height: 184,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF474BF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Positioned(
                                left: 2,
                                top: 22,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '/ط',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'wolfex',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'أحمد عبد الحسيب',
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
                                  decoration: const ShapeDecoration(
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
                                  top: 75,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/img/11.png',
                                    height: 400,
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
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(right: 17),
                  child: Text(
                    "اشراف",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'wolfex',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    width: 98,
                    height: 184,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF474BF5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 28,
                          top: 22,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 52, bottom: 2),
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
                            decoration: const ShapeDecoration(
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
                            top: 20,
                          ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
