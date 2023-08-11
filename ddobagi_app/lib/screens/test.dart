import 'dart:math';

import 'package:ddobagi_app/routes/slide.dart';
import 'package:ddobagi_app/screens/bottom/bottom.dart';
import 'package:ddobagi_app/screens/middle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatefulWidget {
  final int i;
  final int j;
  const Test({super.key, required this.i, required this.j});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> gifs = [
    'assets/images/pom.GIF',
    'assets/images/pom_h.GIF',
    'assets/images/oh.GIF',
    'assets/images/oh_h.GIF',
    'assets/images/ggul.GIF',
    'assets/images/ggul_h.GIF',
    'assets/images/jon.GIF',
    'assets/images/jon_h.GIF'
  ];

  @override
  initState() {
    random = Random().nextInt(8);
    super.initState();
  }

  List<String> answer = ['폼미쳤다', '오히려 좋아', '꿀잼', '존맛탱'];

  int checking(String gif) {
    if (gif.contains("assets/images/pom")) {
      return 0;
    } else if (gif.contains("assets/images/oh")) {
      return 1;
    } else if (gif.contains("assets/images/ggul")) {
      return 2;
    } else {
      return 3;
    }
  }

  int random = 0;

  void last() {
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
              height: 250.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "당신의 점수는",
                    style: TextStyle(fontSize: 20.sp, color: Colors.black),
                  ),
                  Text(
                    "${widget.j * 20}",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Color(0xff4B9EFF),
                      fontWeight: FontWeight.w500,
                    ),
                  )
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Bottombar()));
                      },
                      child: Text("돌아가기"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  void success() {
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
              height: 250.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/11.png",
                    height: 90.h,
                    width: 90.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "정답",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
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
                        if (widget.i < 5) {
                          Navigator.push(
                            context,
                            SlideRightToLeftRoute(
                                enterPage:
                                    Test(i: widget.i + 1, j: widget.j + 1)),
                          );
                        } else {
                          last();
                        }
                      },
                      child: Text("다음으로"))
                ],
              )
            ],
            titlePadding: EdgeInsets.only(top: 13.h),
          );
        });
  }

  void fail() {
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
              height: 250.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/12.png",
                    height: 90.h,
                    width: 90.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "오답",
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
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
                        if (widget.i < 5) {
                          Navigator.push(
                            context,
                            SlideRightToLeftRoute(
                                enterPage: Test(i: widget.i + 1, j: widget.j)),
                          );
                        } else {
                          last();
                        }
                      },
                      child: Text("다음으로"))
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
                      "0${widget.i}/5",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "다음",
                        style: TextStyle(
                            fontSize: 20.sp, color: const Color(0xff4B9EFF)),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Image.asset(
                gifs[random],
                height: 305.h,
                width: double.infinity.w,
              ),
            ),
            for (int i = 0; i < 4; i++)
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
                child: InkWell(
                  onTap: () {
                    int answer = checking(gifs[random]);
                    if (answer == i) {
                      success();
                    } else {
                      fail();
                    }
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
                          answer[i],
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
      )),
    );
  }
}
