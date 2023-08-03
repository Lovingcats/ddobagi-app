import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
      designSize: const Size(360, 800), // 어떤 사이즈를 기준으로 만들것인가
      builder: (BuildContext context, Widget? child) => const MaterialApp(
          title: '꼬꼬댁', debugShowCheckedModeBanner: false, home: const Login()),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "폰트 적용이 안되어 있는 상태입니다",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "폰트 적용이 되어 있는 상태입니다",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontFamily: 'pretendar'),
            )
          ],
        ),
      ),
    );
  }
}
