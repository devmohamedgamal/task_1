// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/user_model/user_model.dart';
import '../../../data/repos/user_repo.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepo) : super(UserInitial());
  final UserRepo userRepo;
  Future<void> getUser() async {
    emit(UserLoading());
    var result = await userRepo.getUsers();
    result.fold((failure) {
      emit(
        UserFailure(errMessage: failure.errorMessage),
      );
    }, (users) {
      emit(
        UserSuccess(users: users),
      );
    });
  }
}
