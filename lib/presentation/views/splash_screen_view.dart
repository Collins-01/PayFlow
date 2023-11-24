import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payflow/constants/app_assets.dart';
import 'package:payflow/router/router.dart';

class SplashScreenView extends ConsumerStatefulWidget {
  const SplashScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SplashScreenViewState();
}

class _SplashScreenViewState extends ConsumerState<SplashScreenView> {
  _onModelReady() async {
    await Future.delayed(const Duration(seconds: 2));
    NavigationService.instance.navigateToReplace(RoutePaths.onBoardingView);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _onModelReady();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.appLogo,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("PayFlow Pro")
        ],
      )),
    );
  }
}
