import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payflow/presentation/views/authentication/business_information_view.dart';
import 'package:payflow/presentation/views/authentication/congratulations_view.dart';
import 'package:payflow/presentation/views/authentication/login_view.dart';
import 'package:payflow/presentation/views/authentication/register_view.dart';
import 'package:payflow/presentation/views/onboarding/onboarding_view.dart';
import 'package:payflow/presentation/views/splash_screen_view.dart';
import 'package:payflow/router/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    builder: (BuildContext context) {
      return const ProviderScope(child: MainApp());
    },
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CongratulationsView(),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
