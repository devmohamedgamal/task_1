import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_1/core/utils/app_constants.dart';

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
