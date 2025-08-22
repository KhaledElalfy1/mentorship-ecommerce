import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/login/data/implementations/auth_data_source.dart';
import 'package:mentorship_ecommerce/features/login/data/models/user_data_model.dart';
import 'package:mentorship_ecommerce/features/login/domain/interfaces/login_auth_repo.dart';

class LoginAuthRepoImple implements LoginAuthRepo {
  final AuthDataSource authRemoteDataSource;

  LoginAuthRepoImple({required this.authRemoteDataSource});
  @override
  Future<Either<Failure, UserDataModel>> loginAuth(
      {required String email, required String password}) async {
    try {
      final result = await authRemoteDataSource.authDataSource(
          email: email, password: password);
      return result;
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}
