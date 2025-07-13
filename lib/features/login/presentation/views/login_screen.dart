import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/helper/app_snack_bar.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_with_api_manager/login_with_api_cubit.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_with_api_manager/login_with_api_state.dart';
import '../../../../core/helper/extention.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/custom_login_text_field.dart';
import '../../../../core/routes/routes.dart';
import 'widgets/custom_log_into.dart';
import 'widgets/custom_login_button.dart';
import 'widgets/social_media_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myCubit = LoginWithApiCubit.get(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, left: 33.w, right: 33.w),
            child: Form(
              key: myCubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomLogInto(),
                  verticalSpace(48.h),
                  CustomLoginTextField(
                    label: 'Email Address',
                    controller: myCubit.emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      if (!RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$')
                          .hasMatch(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20.h),
                  CustomLoginTextField(
                    label: 'Password',
                    controller: myCubit.passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      // if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      //   return 'Password must contain at least one special character';
                      // }
                      // if (!value.contains(RegExp(r'[0-9]'))) {
                      //   return 'Password must contain at least one number';
                      // }
                      return null;
                    },
                  ),
                  verticalSpace(10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: Styles.textStyle13Sregular.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(20.h),
                  BlocConsumer<LoginWithApiCubit, LoginWithApiState>(
                      listener: (context, state) {
                    if (state is LoginWithApiFailureState) {
                      AppSnackBar.showError(
                          context: context, message: state.error);
                    } else if (state is LoginWithApiSuccessfulState) {
                      context.pushReplacementNamed(Routes.dashboard);
                      AppSnackBar.showSuccess(
                          context: context, message: "Welcome onboard");
                    }
                  }, builder: (context, state) {
                    return state is LoginWithApiLoadingState
                        ?const Center(child:  CircularProgressIndicator())
                        : CustomLoginButton(onPressed: () async {
                            if (myCubit.formKey.currentState!.validate()) {
                              await myCubit.login(
                                  email: myCubit.emailController.text,
                                  password: myCubit.passwordController.text);

                              firebaseAnalyticsLogEvent(
                                  firebaseAnalyticsEventModel:
                                      FirebaseAnalyticsEventModel(
                                name: "button_click",
                                parameters: {
                                  'action': 'User clicked on login button',
                                },
                              ));
                            }
                          });
                  }),
                  verticalSpace(12.h),
                  Center(
                    child: Text(
                      'or log in with',
                      style: Styles.textStyle13Sregular.copyWith(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ),
                  verticalSpace(23.h),
                  const SocialMediaButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
