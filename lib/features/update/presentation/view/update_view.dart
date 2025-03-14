import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/core/functions/remote_config_services.dart';
import 'package:mentorship_ecommerce/features/update/presentation/logic/remote_config_cubit/remote_config_cubit.dart';
import 'package:mentorship_ecommerce/features/update/presentation/view/widgets/update_screen_body.dart';

class UpdateView extends StatelessWidget {
  const UpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RemoteConfigCubit(RemoteConfigServices())..checkUpdate(),
      child: const UpdateScreen(),
    );
  }
}
