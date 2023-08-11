import 'package:ddobagi_app/routes/slide.dart';
import 'package:ddobagi_app/screens/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class Middle extends StatefulWidget {
  const Middle({super.key});

  @override
  State<Middle> createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  void FlutterDialog3() {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Container(
              height: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "입모양",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/oh.GIF",
                    height: 150.h,
                    width: 150.w,
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        FlutterDialog4();
                      },
                      child: Text("다음"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  void FlutterDialog4() {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Container(
              height: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "수어",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/oh_h.GIF",
                    height: 150.h,
                    width: 150.w,
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("확인"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  void FlutterDialog() {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Container(
              height: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "입모양",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/pom.GIF",
                    height: 150.h,
                    width: 150.w,
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        FlutterDialog2();
                      },
                      child: Text("다음"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  void FlutterDialog2() {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Container(
              height: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "수어",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    "assets/images/pom_h.GIF",
                    height: 150.h,
                    width: 150.w,
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("화인"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 12.w, top: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 39.w),
                      child: Text(
                        "중급",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            SlideRightToLeftRoute(enterPage: Test(i: 1, j: 0)),
                          );
                        },
                        child: Text(
                          "테스트",
                          style: TextStyle(
                              fontSize: 20.sp, color: const Color(0xff4B9EFF)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
                child: InkWell(
                  onTap: () {
                    FlutterDialog();
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffDBECFF),
                        borderRadius: BorderRadius.circular(20.r)),
                    width: double.infinity,
                    height: 68.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "폼 미쳤다",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
                child: InkWell(
                  onTap: () {
                    FlutterDialog3();
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffDBECFF),
                        borderRadius: BorderRadius.circular(20.r)),
                    width: double.infinity,
                    height: 68.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "오히려 좋아",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffDBECFF),
                        borderRadius: BorderRadius.circular(20.r)),
                    width: double.infinity,
                    height: 68.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "존맛탱",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffDBECFF),
                        borderRadius: BorderRadius.circular(20.r)),
                    width: double.infinity,
                    height: 68.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "꿀잼",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
