abstract class LoginState {}

class GoogleAuthInitialState extends LoginState {}

class GoogleAuthLoadingState extends LoginState {}

class GoogleAuthSuccessState extends LoginState {}

class GoogleAuthFailureState extends LoginState {
  final String error;

  GoogleAuthFailureState({required this.error});
}
