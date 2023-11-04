import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manger/cubit/user_cubit.dart';
import '../../../../../core/utils/widgets/custom_error_widget.dart';
import '../../../../../core/utils/widgets/custom_loading_indecator.dart';
import 'category_list_view_item.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(builder: (context, state) {
      if (state is UserSuccess) {
        return Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              return UsersListViewItem(
                title: state.users[index].name ??
                    "unknown", // or we can put "!" null check oprator
                id: state.users[index].id ?? 0,
              );
            },
          ),
        );
      } else if (state is UserFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndecator();
      }
    });
  }
}
