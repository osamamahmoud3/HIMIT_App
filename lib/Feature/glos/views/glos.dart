// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lms/Core/Network/local_Network.dart';
import 'package:flutter_lms/Core/utils/Custom_noification_page.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';
import 'package:flutter_lms/Feature/Auth_Feature/presentation/controller/cubit/auth_cubit_cubit.dart';
import 'package:flutter_lms/Feature/Auth_Feature/presentation/views/widgets/Custom_Loading_indicator.dart';
import 'package:flutter_lms/Feature/welcome/views/welcome.dart';

class Glos extends StatelessWidget {
  const Glos({super.key});

  @override
  Widget build(BuildContext context) {
    
        // cubit.login(user!, password);
        return 
             Scaffold(
                drawer: Drawerr(),
                floatingActionButton: FloatingActionButtonn(),
                backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomAppBar(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "العودة",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'wolfexx',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return Welcome();
                              }));
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right_sharp,
                              color: Color.fromRGBO(82, 63, 237, 1),
                              size: 35,
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/img/glos2.png",
                                scale: 1.0,
                                width: 204.77,
                                height: 204.77,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.fromLTRB(0, 115, 0, 63),
                        ),
                      ),
                      Text(
                        "! لم يتم الاعلان عن ارقام الجلوس بعد ",
                        style: TextStyle(
                            color: Color.fromARGB(97, 255, 255, 255),
                            fontFamily: "wolfexx",
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              
    );
      }
    
  }

