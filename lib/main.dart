import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/Features/home/data/repos/user_repo_impl.dart';
import 'package:task_1/Features/root/presentation/views/root_view.dart';
import 'package:task_1/core/utils/app_service.dart';

import 'Features/home/data/repos/user_repo.dart';
import 'Features/home/presentation/manger/cubit/user_cubit.dart';

// ------------------------------ Users Branch -----------------------------------//
void main() {
  runApp(const Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(432.0, 960.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (context) =>
                        UserCubit(UserRepoImpl(ApiService(Dio())))),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: "Outfit",
                ),
                home: const RootView(),
              ));
        });
  }
}
