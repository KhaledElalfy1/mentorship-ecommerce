import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/api/end_points.dart';
import 'package:mentorship_ecommerce/core/helper/secure_token_storage_helper.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';
import 'package:mentorship_ecommerce/features/login/domain/use_cases/login_use_case.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_with_api_manager/login_with_api_state.dart';

class LoginWithApiCubit extends Cubit<LoginWithApiState> {
  LoginWithApiCubit(this.loginUseCase) : super(LoginWithApiInitialState());
  final LoginUseCase loginUseCase;

  static LoginWithApiCubit get(context) => BlocProvider.of(context);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> login({required String email, required String password}) async {
    emit(LoginWithApiLoadingState());

    final result =
        await loginUseCase.callFromRepo(email: email, password: password);

    result.fold(
      (failure) => emit(LoginWithApiFailureState(error: failure.error)),
      (userData) async {
        await SecureStorageHelper.write(
          key: ApiKeys.accessToken,
          value: userData.accessToken,
        );

        await SecureStorageHelper.write(
          key: ApiKeys.refreshToken,
          value: userData.refreshToken,
        );

        emit(LoginWithApiSuccessfulState(userDataModel: userData));
      },
    );
  }
}
