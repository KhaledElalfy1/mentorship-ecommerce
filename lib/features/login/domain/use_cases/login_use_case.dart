import 'package:dartz/dartz.dart';
import 'package:mentorship_ecommerce/core/errors/failure.dart';
import 'package:mentorship_ecommerce/features/login/data/models/user_data_model.dart';
import 'package:mentorship_ecommerce/features/login/domain/interfaces/login_auth_repo.dart';

class LoginUseCase {
  final LoginAuthRepo loginAuthRepo;
  LoginUseCase(this.loginAuthRepo);

  Future<Either<Failure, UserDataModel>> callFromRepo(
      {required String email, required String password}) {
    return loginAuthRepo.loginAuth(email: email, password: password);
  }
}
