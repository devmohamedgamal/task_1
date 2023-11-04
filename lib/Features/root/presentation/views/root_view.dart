import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/presentation/manger/cubit/user_cubit.dart';
import '../../../home/presentation/views/home_view.dart';
import '../../../assets/presentation/views/assets_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import '../../../support/presentation/views/support_view.dart';
import 'widgets/bottom_nav_bar.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController controller;
  int currentScreen = 0;

  List<Widget> screens = [
    const HomeView(),
    const AssetsView(),
    const SupportView(),
    const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentScreen);
    BlocProvider.of<UserCubit>(context).getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: BottomNavBar(
        currentScreen: currentScreen,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
      ),
    );
  }
}
