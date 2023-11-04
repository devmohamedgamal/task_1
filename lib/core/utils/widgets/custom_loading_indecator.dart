import 'package:flutter/material.dart';
import 'package:task_1/core/utils/app_constants.dart';

class CustomLoadingIndecator extends StatelessWidget {
  const CustomLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppConstants.kPrimaryColor,
      ),
    );
  }
}
