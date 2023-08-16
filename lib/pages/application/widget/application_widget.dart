import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';
import '../../home/home_page.dart';

Widget buildPage(int index) {
  // ignore: no_leading_underscores_for_local_identifiers
  List<Widget> _widget = [
    const HomePage(),
    const Center(child: Text("Search")),
    const Center(child: Text("Course")),
    const Center(child: Text("Chat")),
    const Center(child: Text("Profile")),
  ];

  return _widget[index];
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: "home",
    icon: SizedBox(
      width: 15.w,
      height: 15.h,
      child:
          const Icon(Icons.home, color: AppColors.primarySecondaryElementText),
      // child: Image.asset("name"),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.h,
      child: const Icon(Icons.home, color: AppColors.primaryElement),
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
      child: const Icon(Icons.search, color: AppColors.primaryElement),
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
      child: const Icon(Icons.play_arrow, color: AppColors.primaryElement),
    ),
  ),
  BottomNavigationBarItem(
    label: "chat",
    icon: SizedBox(
      width: 15.w,
      height: 15.h,
      child:
          const Icon(Icons.chat, color: AppColors.primarySecondaryElementText),
      // child: Image.asset("name"),
    ),
    activeIcon: SizedBox(
      width: 15.w,
      height: 15.h,
      child: const Icon(Icons.chat, color: AppColors.primaryElement),
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
      child: const Icon(Icons.person_sharp, color: AppColors.primaryElement),
    ),
  ),
];
