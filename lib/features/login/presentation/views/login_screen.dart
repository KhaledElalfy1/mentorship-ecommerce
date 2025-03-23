import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorship_ecommerce/core/functions/firebase_analytics_log_event.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';
import '../../../../core/helper/extention.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/styles.dart';
import 'widgets/custom_login_text_field.dart';
import '../../../../core/routes/routes.dart';
import 'widgets/custom_log_into.dart';
import 'widgets/custom_login_button.dart';
import 'widgets/social_media_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, left: 33.w, right: 33.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomLogInto(),
                  verticalSpace(48.h),
                  CustomLoginTextField(
                    label: 'Email Address',
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20.h),
                  CustomLoginTextField(
                    label: 'Password',
                    controller: _passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        return 'Password must contain at least one special character';
                      }
                      if (!value.contains(RegExp(r'[0-9]'))) {
                        return 'Password must contain at least one number';
                      }
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
                  CustomLoginButton(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Login Successful!")),
                      );
                      firebaseAnalyticsLogEvent(
                          firebaseAnalyticsEventModel:
                              FirebaseAnalyticsEventModel(
                        name: "button_click",
                        parameters: {
                          'action': 'User clicked on login button',
                        },
                      ));
                      context.pushReplacementNamed(Routes.dashboard);
                    }
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
                  Center(
                    child: ElevatedButton(
                    onPressed: () {
                        FirebaseCrashlytics.instance.crash();
                     },
                          child: Text("Test Crash"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
