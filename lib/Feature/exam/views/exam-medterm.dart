// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lms/Core/utils/Custom_noification_page.dart';
import 'package:flutter_lms/Core/utils/FloatingActionButton.dart';
import 'package:flutter_lms/Core/utils/drawer.dart';
import 'package:flutter_lms/Feature/exam/controller/exam_schedule.dart';
import 'package:flutter_lms/Feature/exam/views/widgets/exam_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Network/local_Network.dart';
import 'not-exam.dart';

class ExamMedterm extends StatefulWidget {
  const ExamMedterm({super.key});

  @override
  State<ExamMedterm> createState() => _ExamMedtermState();
}

class _ExamMedtermState extends State<ExamMedterm> {

  List<String> items = ["جدول الميد ترم", "جدول الفاينل","جدول التخلفات" ];

  int selecteditem = 0;

  @override
  void initState() {
    context.read<ExamCubit>().fetchExams(token!, "exam-table");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExamCubit, ExamState>(
      builder: (context, state) {
        return state is ExamLoaded
            ? Scaffold(
                drawer: Drawerr(),
                floatingActionButton: FloatingActionButtonn(),
                backgroundColor: const Color.fromRGBO(25, 23, 44, 1),
                body: ListView(children: [
                  CustomAppBar(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "العودة",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'wolfexx',
                            fontWeight: FontWeight.w700,
                            height: 0.09.h,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Color.fromRGBO(82, 63, 237, 1),
                            size: 30.sp,
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  Column(children: [
                    Directionality(textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                            children: List.generate(
                                items.length,
                                (index) => Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selecteditem = index;
                                          });
                                          print(index);
                                          if (index == 0) {
                                            context
                                                .read<ExamCubit>()
                                                .fetchExams(token!, "exam-table");
                                          } else if (index == 1) {
                                            context.read<ExamCubit>().fetchExams(
                                                token!, "exam-table-one");
                                          } else if (index == 2) {
                                            context.read<ExamCubit>().fetchExams(
                                                token!, "exam-table-two");
                                          }
                                        },
                                        child: Padding(
                                          padding: index == 1
                                              ? const EdgeInsets.symmetric(
                                                  horizontal: 10)
                                              : EdgeInsets.zero,
                                          child: ExamItem(
                                              tilte: items[index],
                                              isactive: selecteditem == index),
                                        ),
                                      ),
                                    ))),
                      ),
                    ),
                    tableItem(yom: 'السبت', state: state),
                    tableItem(yom: 'الأحد', state: state),
                    tableItem(yom: 'الأثنين', state: state),
                    tableItem(yom: 'الثلاثاء', state: state),
                    tableItem(yom: 'الأربعاء', state: state),
                    tableItem(yom: 'الخميس', state: state),
                    SizedBox(
                      height: 90,
                    )
                  ]),
                ]))
            : Notexam();
      },
    );
  }
}

tableItem({required String yom, required state}) {
  return state.exam.days!.first[yom] != null
      ? Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 92),
                width: 279.w,
                height: 104.h,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.98, -0.21),
                    end: Alignment(-0.98, 0.21),
                    colors: [Color(0xFF523FED), Color(0xE57D3CFC)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        // "نظم معلومات محاسبية",
                        state.exam.days?.first[yom] != null
                            ? state.exam.days!.first[yom]['subject']
                            : '',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'wolfex',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        state.exam.days?.first[yom] != null
                            ? "${state.exam.days!.first[yom]['time'].toString().substring(0, 10)}  $yom "
                            : '',
                        //  "السبت   2024/1/2",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "wolfexx",
                            fontSize: 12),
                      ),
                      Text(
                        state.exam.days?.first[yom] != null
                            ? "${state.exam.days!.first[yom]['time'].toString().substring(11, 19)}  وقت الامتحان "
                            : '',
                        // "12:00 PM وقت الامتحان",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "wolfexx",
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      : SizedBox();
}
