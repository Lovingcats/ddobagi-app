import 'package:ddobagi_app/screens/bottom/home.dart';
import 'package:ddobagi_app/screens/bottom/profile.dart';
import 'package:ddobagi_app/screens/bottom/study.dart';
import 'package:ddobagi_app/screens/bottom/trans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _HomePageState();
}

class _HomePageState extends State<Bottombar> {
  int selected = 0;

  var heart = false;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
            //바텀바 코드

            length: 4,
            child: Scaffold(
              extendBody: true,
              bottomNavigationBar: StylishBottomBar(
                items: [
                  BottomBarItem(
                      selectedColor: const Color(0xffFFD647),
                      backgroundColor: Colors.black,
                      icon: Icon(
                        Icons.home_outlined,
                        size: 23.h,
                      ),
                      selectedIcon: Icon(
                        Icons.home_outlined,
                        size: 23.h,
                        color: const Color(0xffFFD647),
                      ),
                      title: Text(
                        '홈',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: selected == 0
                                ? const Color(0xffFFD647)
                                : Colors.black),
                      )),
                  BottomBarItem(
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        size: 23.h,
                      ),
                      selectedIcon: Icon(
                        Icons.camera_alt_outlined,
                        size: 23.h,
                        color: const Color(0xffFFD647),
                      ),
                      selectedColor: const Color(0xffFFD647),
                      backgroundColor: Colors.black,
                      title: Text(
                        '번역',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: selected == 1
                                ? const Color(0xffFFD647)
                                : Colors.black),
                      )),
                  BottomBarItem(
                      icon: Icon(
                        Icons.auto_stories_outlined,
                        size: 23.h,
                      ),
                      selectedIcon: Icon(
                        Icons.auto_stories_outlined,
                        size: 23.h,
                        color: const Color(0xffFFD647),
                      ),
                      backgroundColor: Colors.black,
                      selectedColor: const Color(0xffFFD647),
                      title: Text(
                        '학습',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: selected == 2
                                ? const Color(0xffFFD647)
                                : Colors.black),
                      )),
                  BottomBarItem(
                      icon: Icon(
                        Icons.person_outline,
                        size: 23.h,
                      ),
                      selectedIcon: Icon(
                        Icons.person_outline,
                        size: 23.h,
                        color: const Color(0xffFFD647),
                      ),
                      backgroundColor: Colors.black,
                      selectedColor: const Color(0xffFFD647),
                      title: Text(
                        '내정보',
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: selected == 3
                                ? const Color(0xffFFD647)
                                : Colors.black),
                      )),
                ],
                option: AnimatedBarOptions(
                  iconSize: 23.h,
                  barAnimation: BarAnimation.fade,
                  iconStyle: IconStyle.Default,
                  opacity: 0.3,
                ),
                currentIndex: selected ?? 0,
                hasNotch: true,
                onTap: (index) {
                  controller.jumpToPage(index);
                  setState(() {
                    selected = index;
                  });
                },
              ),
              body: SafeArea(
                child: Stack(
                  children: [
                    PageView(
                      controller: controller,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: ((value) {
                        if (value == 0) {
                          setState(() {
                            selected = 0;
                          });
                        } else if (value == 1) {
                          setState(() {
                            selected = 1;
                          });
                        } else if (value == 2) {
                          setState(() {
                            selected = 2;
                          });
                        } else if (value == 3) {
                          setState(() {
                            selected = 3;
                          });
                        } else {
                          setState(() {
                            selected = 4;
                          });
                        }
                      }),
                      children: const [
                        Home(),
                        Trans(),
                        Study(),
                        Profile(),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
