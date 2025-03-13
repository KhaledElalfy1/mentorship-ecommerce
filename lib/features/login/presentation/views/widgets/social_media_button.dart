import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/helper/extention.dart';
import 'package:mentorship_ecommerce/core/routes/routes.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_cubit.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_state.dart';
import '../../../../../core/utils/assets.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is GoogleAuthSuccessState ) {
          context.pushNamed(Routes.home);
        } else if (state is GoogleAuthFailureState ) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      builder: (context, state) {
        bool isLoading = state is GoogleAuthLoadingState;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset(Assets.appleImage),
              onPressed: () {},
            ),
            const SizedBox(width: 20),
            IconButton(
              icon:  Image.asset(Assets.googleImage),
              onPressed: isLoading
                  ? null
                  : () {
                      context.read<LoginCubit>().loginWithGoogle();
                    },
            ),
            const SizedBox(width: 20),
            IconButton(
              icon: Image.asset(Assets.facebookImage),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
