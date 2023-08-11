import 'package:ddobagi_app/screens/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pw extends StatefulWidget {
  const Pw({super.key});

  @override
  State<Pw> createState() => _EmailState();
}

class _EmailState extends State<Pw> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomSheet: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom + 22.h),
                  child: ElevatedButton(
                    onPressed: () async {
                      CircularProgressIndicator();
                      await Future.delayed(const Duration(
                          milliseconds: 2000)); //1초를 기다린 후 새로고침한다.

                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return const Start();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFE147),
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.r))),
                        minimumSize: Size(325.w, 53.h)),
                    child: Text("다음",
                        style: TextStyle(fontSize: 24.sp, color: Colors.white)),
                  )),
            ],
          ),
        ),
        appBar: null,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, left: 15.w),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25.h,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 18.h, bottom: 30.h, left: 25.w),
                      child: Text(
                        "비밀번호를 설정해주세요.",
                        style: TextStyle(
                            fontSize: 21.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child: Container(
                        width: 320.w,
                        height: 47.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.h, color: Colors.grey),
                          ),
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: const Color(0xff565656),
                              fontFamily: 'pretender'),
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 5.w, right: 0, top: 0, bottom: 0),
                            hintText: '비밀번호',
                            hintStyle: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff565656).withOpacity(0.5),
                                fontFamily: 'pretender'),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // enabledBorder: const UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.grey),
                            // ),
                            // focusedBorder: const UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.grey),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, right: 25.w),
                      child: Container(
                        width: 320.w,
                        height: 47.h,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.h, color: Colors.grey),
                          ),
                        ),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: const Color(0xff565656),
                              fontFamily: 'pretender'),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 5.w, right: 0, top: 0, bottom: 0),
                            hintText: '비밀번호 확인',
                            hintStyle: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff565656).withOpacity(0.5),
                                fontFamily: 'pretender'),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // enabledBorder: const UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.grey),
                            // ),
                            // focusedBorder: const UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.grey),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
