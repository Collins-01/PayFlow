import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payflow/constants/app_assets.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppAssets.appLogo,
          height: 43,
        ),
        AppText.body1("PayFlow Pro")
      ],
    );
  }
}
