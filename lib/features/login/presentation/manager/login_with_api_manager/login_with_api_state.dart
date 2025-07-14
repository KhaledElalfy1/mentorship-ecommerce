import 'package:mentorship_ecommerce/features/login/data/models/user_data_model.dart';

abstract class LoginWithApiState {}

class LoginWithApiInitialState extends LoginWithApiState{}

class LoginWithApiLoadingState extends LoginWithApiState{}

class LoginWithApiFailureState extends LoginWithApiState{
  final String error;

  LoginWithApiFailureState({required this.error});
}

class LoginWithApiSuccessfulState extends LoginWithApiState{
  final UserDataModel userDataModel;

  LoginWithApiSuccessfulState({required this.userDataModel});
}