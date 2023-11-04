import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets_manger.dart';
import 'category_list_view_item.dart';

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
              log("u tap Constructions");
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
