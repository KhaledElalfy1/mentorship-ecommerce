import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/login/data/models/user_data_model.dart';

abstract class LoginAuthRepo {
  Future<Either<Failure, UserDataModel>> loginAuth(
      {required String email, required String password});
}
