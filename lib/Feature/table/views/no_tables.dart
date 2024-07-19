// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_lms/Core/utils/Custom_noification_page.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';
import 'package:flutter_lms/Feature/welcome/views/welcome.dart';

class NoTables extends StatelessWidget {
  const NoTables({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [

          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                    child: Image.asset(
                      "assets/img/notexam.png",
                      scale: 1.0,
                      width: 204.77,
                      height: 204.77,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "! لا يوجد جداول حالياً ",
            style: TextStyle(
                color: Color.fromARGB(97, 255, 255, 255),
                fontFamily: "wolfexx",
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
