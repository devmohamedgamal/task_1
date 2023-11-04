import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_1/Features/home/data/models/user_model/user_model.dart';
import 'package:task_1/Features/home/data/repos/user_repo.dart';
import 'package:task_1/core/utils/app_service.dart';
import 'package:task_1/core/utils/errors/failure.dart';

class UserRepoImpl implements UserRepo {
  final ApiService apiService;

  UserRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<UserModel>>> getUsers() async {
    try {
      var data = await apiService.get(endPoint: "/users");
      List<UserModel> users = [];
      for (var user in data) {
        users.add(UserModel.fromJson(user));
      }

      // test model
      log(users[0].name.toString());
      return right(users);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
