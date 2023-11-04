import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_1/core/utils/app_constants.dart';
import 'package:task_1/core/utils/assets_manger.dart';

import '../../../../../core/utils/widgets/custom_btn.dart';
import 'three_button_category.dart';

class CategoryWidgetSection extends StatefulWidget {
  const CategoryWidgetSection({super.key});

  @override
  State<CategoryWidgetSection> createState() => _CategoryWidgetSectionState();
}

class _CategoryWidgetSectionState extends State<CategoryWidgetSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 475.h,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            const ThreeButtonCategory(),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories View",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline,
                      color: const Color(0xff8C8C8C),
                    ),
                  ),
                ),
              ],
            ),
            const CategoryListView(),
          ],
        ),
      ),
    );
  }
}

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CategoryListViewItem(
            title: "Constructions",
            icon: AssetsManger.kItemIcon1,
            onTap: () {
              log("hello Accounting Services");
            },
          ),
          SizedBox(height: 16.h),
          CategoryListViewItem(
            title: "Insurances",
            icon: AssetsManger.kItemIcon2,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
          CategoryListViewItem(
            title: "Legal",
            icon: AssetsManger.kItemIcon3,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
          CategoryListViewItem(
            title: "Buy & Sell",
            icon: AssetsManger.kItemIcon4,
            onTap: () {},
          ),
          SizedBox(height: 16.h),
          CategoryListViewItem(
            title: "Accounting Services",
            icon: AssetsManger.kItemIcon5,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title, icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: AppConstants.kPrimaryColor.withOpacity(0.4),
        onTap: onTap,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff1E1E1E),
              height: 1.3,
            ),
          ),
          leading: SvgPicture.asset(icon),
          trailing: const Icon(Icons.east),
        ),
      ),
    );
  }
}
