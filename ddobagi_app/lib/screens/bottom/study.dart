import 'package:ddobagi_app/screens/middle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  State<Study> createState() => _HomeState();
}

class _HomeState extends State<Study> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "학습 노트",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 41.w, top: 35.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 310.h,
                    width: 259.w,
                    child: Image.asset(
                      "assets/images/5.png",
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 49.h),
              child: Container(
                padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                decoration: BoxDecoration(
                    color: const Color(0xffDBECFF),
                    borderRadius: BorderRadius.circular(20.r)),
                width: double.infinity,
                height: 68.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "초급",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "기초부터 차근차근 실력을 올려봐요!",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontFamily: 'pretendar'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      fullscreenDialog: true,
                      builder: (context) {
                        return const Middle();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffDBECFF),
                      borderRadius: BorderRadius.circular(20.r)),
                  width: double.infinity,
                  height: 68.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "중급",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "기초를 다졌다면 더 멋진 어휘 실력을!",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontFamily: 'pretendar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
              child: Container(
                padding: EdgeInsets.only(left: 35.5.w, right: 35.5.w),
                decoration: BoxDecoration(
                    color: const Color(0xffDBECFF),
                    borderRadius: BorderRadius.circular(20.r)),
                width: double.infinity,
                height: 68.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "고급",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "실력을 충분히 키웠다면 도전해봐요!",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontFamily: 'pretendar'),
                    ),
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
