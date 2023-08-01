import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/application/widget/application_widget.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: SafeArea(
        child: Scaffold(
            //membuat bottom navigation bar
            body: buildPage(_index),
            bottomNavigationBar: Container(
              width: 375.w,
              height: 58.h,
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.h),
                  topRight: Radius.circular(20.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: BottomNavigationBar(
                currentIndex: _index,
                //logic untuk pindah halaman sesuai index
                onTap: (value) {
                  //trigger UI
                  setState(() {
                    _index = value;
                  });
                  // print(_index);
                },
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: AppColors.primaryElement,
                unselectedItemColor: AppColors.primaryFourElementText,
                items: [
                  BottomNavigationBarItem(
                    label: "home",
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.home,
                          color: AppColors.primarySecondaryElementText),
                      // child: Image.asset("name"),
                    ),
                    activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.home,
                          color: AppColors.primaryElement),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "search",
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.search,
                          color: AppColors.primarySecondaryElementText),
                      // child: Image.asset("name"),
                    ),
                    activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.search,
                          color: AppColors.primaryElement),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "course",
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.play_arrow,
                          color: AppColors.primarySecondaryElementText),
                      // child: Image.asset("name"),
                    ),
                    activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.play_arrow,
                          color: AppColors.primaryElement),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "chat",
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.chat,
                          color: AppColors.primarySecondaryElementText),
                      // child: Image.asset("name"),
                    ),
                    activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.chat,
                          color: AppColors.primaryElement),
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "profile",
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.person_sharp,
                          color: AppColors.primarySecondaryElementText),
                      // child: Image.asset("name"),
                    ),
                    activeIcon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: const Icon(Icons.person_sharp,
                          color: AppColors.primaryElement),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
