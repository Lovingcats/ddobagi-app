import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _HomeState();
}

class _HomeState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 45.h),
              child: Text(
                "마이페이지",
                style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 70.h,
                    width: 70.w,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/6.png'),
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "이쁘나은",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        "yunaeun0813@gmail.com",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xffABABAB),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  TextButton(onPressed: () {}, child: Text("수정"))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 19.h),
              child: Container(
                width: double.infinity,
                height: 90.h,
                child: Image.asset(
                  "assets/images/9.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: 130.w,
                      height: 25.h,
                      child: Image.asset(
                        "assets/images/10.png",
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 14.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (int i = 1; i < 5; i++)
                      Container(
                        padding: EdgeInsets.only(right: 20.w),
                        width: 274.w,
                        height: 220.h,
                        child: Image.asset(
                          "assets/images/$i.png",
                          fit: BoxFit.fill,
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
