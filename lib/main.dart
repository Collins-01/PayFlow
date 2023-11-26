import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:payflow/presentation/views/splash_screen_view.dart';

import 'package:payflow/router/router.dart';

// ignore: constant_identifier_names
const IS_DEBUG = false;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (IS_DEBUG) {
    runApp(DevicePreview(
      builder: (BuildContext context) {
        return const ProviderScope(child: MainApp());
      },
    ));
  } else {
    runApp(const ProviderScope(child: MainApp()));
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreenView(),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
