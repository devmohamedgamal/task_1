import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_constants.dart';

class UsersListViewItem extends StatelessWidget {
  const UsersListViewItem(
      {super.key, required this.title, this.onTap, required this.id});
  final String title;
  final Function()? onTap;
  final int id;

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
          leading: Text("$id"),
          trailing: const Icon(Icons.east),
        ),
      ),
    );
  }
}
