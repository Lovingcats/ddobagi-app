import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hearing",
                  style: TextStyle(
                      fontSize: 27.sp,
                      color: const Color(0xffFFE147),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  ".",
                  style: TextStyle(
                      fontSize: 27.sp,
                      color: const Color(0xff1A83FF),
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 95.w, right: 20.w, top: 2.h),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25.h,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Container(
                height: 88.h,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/banner1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "신규 컨텐츠",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
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
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "요즘 10대들이 많이 쓰는 용어예요!",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )
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
                    for (int i = 4; i > 0; i--)
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
