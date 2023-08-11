import 'package:ddobagi_app/routes/slideleft.dart';
import 'package:ddobagi_app/screens/bottom/bottom.dart';
import 'package:ddobagi_app/screens/email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp, // 세로 정방향만 사용할 수 있다.
      // DeviceOrientation.portraitDown,
      // DeviceOrientation.landscapeLeft,
      // DeviceOrientation.landscapeRight,
    ]);

    return ScreenUtilInit(
      //screenutil 라이브러리 (뒤에 .h, .w00, .r, .sp등등 크기를 반응형으로 만들어줌)
      designSize: const Size(375, 812), // 어떤 사이즈를 기준으로 만들것인가
      builder: (BuildContext context, Widget? child) => const MaterialApp(
          title: 'Hearing',
          debugShowCheckedModeBanner: false,
          home: const Login()),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with WidgetsBindingObserver {
  final _nameController = TextEditingController();

  bool keyboardVisible = false;

  @override
  void initState() {
    super.initState();
    // WidgetsBindingObserver 등록
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // WidgetsBindingObserver 해제
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bool newKeyboardVisible =
        WidgetsBinding.instance.window.viewInsets.bottom > 0;
    setState(() {
      keyboardVisible = newKeyboardVisible;
      print(keyboardVisible);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 200.h, left: 25.w, bottom: 13.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hearing",
                          style: TextStyle(
                              fontSize: 53.sp,
                              color: const Color(0xffFFE147),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ".",
                          style: TextStyle(
                              fontSize: 53.sp,
                              color: const Color(0xff4B9EFF),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w, bottom: 22.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "수어 어떻게 공부하지? 고민될 때, 히어링",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontFamily: 'pretendar'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        color: const Color(0xffE9E9EA),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff565656),
                            fontFamily: 'pretender'),
                        decoration: InputDecoration(
                            hintText: '아이디를 입력해주세요.',
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff565656).withOpacity(0.5),
                                fontFamily: 'pretender'),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 16.w, right: 0, top: 0, bottom: 0),
                            suffixIcon: _nameController.text == ""
                                ? IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(null))
                                : IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.cancel_outlined))),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 13.h),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        color: const Color(0xffE9E9EA),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        obscureText: true,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff565656),
                            fontFamily: 'pretender'),
                        decoration: InputDecoration(
                            hintText: '비밀번호를 입력해주세요.',
                            hintStyle: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff565656).withOpacity(0.5),
                                fontFamily: 'pretender'),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 16.w, right: 0, top: 0, bottom: 0),
                            suffixIcon: _nameController.text == ""
                                ? IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(null))
                                : IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.cancel_outlined))),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 29.h, bottom: 215.h),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Bottombar()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: const Color(0xffFFE147),
                        minimumSize: Size(double.infinity, 53.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r)),
                      ),
                      child: Text(
                        "로그인",
                        style: TextStyle(
                            fontSize: 23.sp,
                            color: Colors.white,
                            fontFamily: 'pretendar'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return const Email();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "회원이 아니신가요?",
                      style: TextStyle(
                          color: const Color(0xff128DFF),
                          fontSize: 13.sp,
                          fontFamily: 'pretendar',
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.2.h),
                    ),
                  ),
                  SizedBox(
                    height: keyboardVisible == true ? 150.h : 0.h,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
