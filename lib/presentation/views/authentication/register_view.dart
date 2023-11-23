import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payflow/extensions/extensions.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class RegisterView extends ConsumerWidget {
  RegisterView({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bvnController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizingConfig.defaultPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap.h(
                  context.deviceHeightPercentage(percentage: 5),
                ),
                const AppLogo(),
                Gap.h(
                  context.deviceHeightPercentage(percentage: 2),
                ),
                AppText.heading4("Sign up"),
                Gap.h(
                  context.deviceHeightPercentage(percentage: 3),
                ),
                DefaultTextField(
                  title: "Email Address",
                  hintText: "johndoes@gmail.com",
                  controller: _emailController,
                ),
                Gap.h20,
                DefaultTextField(
                  title: "BVN",
                  hintText: "12390878678",
                  controller: _bvnController,
                  isPassword: false,
                ),
                Gap.h20,
                DefaultTextField(
                  title: "Phone Number",
                  hintText: "12390878678",
                  controller: _phoneNumberController,
                  isPassword: false,
                ),
                Gap.h20,
                DefaultTextField(
                  title: "Password",
                  hintText: "********",
                  controller: _passwordController,
                  isPassword: true,
                ),
                Gap.h20,
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_box_outline_blank),
                        Gap.w14,
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: "By checking this box, you agree to our ",
                              style: bodyStyle2,
                              children: [
                                TextSpan(
                                  text: "privacy policy  ",
                                  style: bodyStyle2.copyWith(
                                    color: AppColors.errorColor,
                                  ),
                                ),
                                TextSpan(
                                  text: "and",
                                  style: bodyStyle2.copyWith(),
                                ),
                                TextSpan(
                                  text: " Terms and Conditions.",
                                  style: bodyStyle2.copyWith(
                                    color: AppColors.errorColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap.h24,
                DefaultButton(
                  title: "Next",
                  callback: () {},
                ),
                Gap.h10,
                Gap.h(
                  context.deviceHeightPercentage(percentage: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
