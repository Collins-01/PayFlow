import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payflow/constants/app_assets.dart';
import 'package:payflow/extensions/extensions.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class CongratulationsView extends ConsumerWidget {
  const CongratulationsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizingConfig.defaultPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.appLogo),
              AppText.heading2("Congratulations!"),
              AppText.body1("You have successfully created an account"),
              Gap.h(
                context.deviceHeightPercentage(percentage: 3),
              ),
              Gap.h24,
              DefaultButton(
                title: "Proceed",
                callback: () {},
              ),
              Gap.h(
                context.deviceHeightPercentage(percentage: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
