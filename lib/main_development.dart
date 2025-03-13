import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorship_ecommerce/features/login/data/repo/login_repo_implementation.dart';
import 'package:mentorship_ecommerce/features/login/presentation/manager/login_cubit.dart';
import 'firebase_options_dev.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (context) => LoginCubit(UserAuthRepoImplementaion())),
    ],
    child: DevicePreview(builder: (context) {
      return const EcommerceApp();
    }),
  ));
}
