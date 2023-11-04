// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_constants.dart';

import '../../../../../core/utils/assets_manger.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar(
      {super.key, required this.currentScreen, this.onDestinationSelected});
  final int currentScreen;
  final Function(int)? onDestinationSelected;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.currentScreen,
      backgroundColor: Colors.white,
      elevation: 10,
      shadowColor: Colors.grey.withOpacity(0.5),
      height: 60.h,
      indicatorColor: Colors.transparent,
      onDestinationSelected: widget.onDestinationSelected,
      destinations: [
        NavigationDestination(
          selectedIcon: Icon(
            Icons.home_filled,
            color: AppConstants.kPrimaryColor,
            size: 35.sp,
          ),
          icon: Icon(
            Icons.home_filled,
            color: const Color(0xffC4C4C4),
            size: 35.sp,
          ),
          label: "Home",
        ),
        NavigationDestination(
          selectedIcon: SvgPicture.asset(
            AssetsManger.kQrIcon,
            height: 22.h,
            width: 22.w,
            color: AppConstants.kPrimaryColor,
          ),
          icon: SvgPicture.asset(
            AssetsManger.kQrIcon,
            height: 22.h,
            width: 22.w,
            color: const Color(0xffC4C4C4),
          ),
          label: "Assets",
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.support_agent,
            color: AppConstants.kPrimaryColor,
            size: 35.sp,
          ),
          icon: Icon(
            Icons.support_agent,
            color: const Color(0xffC4C4C4),
            size: 35.sp,
          ),
          label: "Support",
        ),
        NavigationDestination(
          selectedIcon: Icon(
            Icons.person_outline,
            color: AppConstants.kPrimaryColor,
            size: 35.sp,
          ),
          icon: Icon(
            Icons.person_outline,
            color: const Color(0xffC4C4C4),
            size: 35.sp,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
