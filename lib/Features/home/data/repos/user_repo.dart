import 'package:dartz/dartz.dart';
import 'package:task_1/core/utils/errors/failure.dart';

import '../models/user_model/user_model.dart';

abstract class UserRepo {
  Future<Either<Failure, List<UserModel>>> getUsers();
}
