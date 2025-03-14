import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorship_ecommerce/core/utils/app_color.dart';
import 'package:mentorship_ecommerce/core/utils/styles.dart';
import 'package:mentorship_ecommerce/features/update/presentation/logic/remote_config_cubit/remote_config_cubit.dart';
import 'package:mentorship_ecommerce/features/update/presentation/view/widgets/custom_button.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: BlocBuilder<RemoteConfigCubit, RemoteConfigState>(
        builder: (context, state) {
          if (state is RemoteConfigLoadeing) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RemoteConfigNoUpdate) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svgs/Update.svg"),
                  Text(
                    "No Update Available",
                    style: Styles.textStyle24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your App is Updated.",
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Platform.isIOS ? CustomButton(label: "App Store") : CustomButton(label: "Google Play")
                ],
              ),
            );
          } else if (state is RemoteConfigHasUpdate) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svgs/Update.svg"),
                  Text(
                    "Update Required",
                    style: Styles.textStyle24,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please update the app to continue using it.",
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Platform.isIOS ? CustomButton(label: "App Store") : CustomButton(label: "Google Play")
                ],
              ),
            );
          } else if (state is RemoteConfigError) {
            return Text(state.errMessage);
          }

          return const SizedBox();
        },
      ),
    );
  }
}
