import 'package:ddobagi_app/screens/bottom/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE147),
      appBar: null,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 482.h,
              width: double.infinity,
              child: Image.asset(
                "assets/images/white.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hearing",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ".",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: const Color(0xff1A83FF),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "히어링과 함께 실생활 수어를 배워보아요!",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xffFFF9DB),
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100.h,
        color: const Color(0xffFFE147),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom + 22.h),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Bottombar()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.r))),
                      minimumSize: Size(325.w, 53.h)),
                  child: Text("시작하기",
                      style: TextStyle(
                          fontSize: 16.5.sp, color: const Color(0xff808080))),
                )),
          ],
        ),
      ),
    );
  }
}
