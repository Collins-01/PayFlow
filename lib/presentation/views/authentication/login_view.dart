import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payflow/extensions/context_extension.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class LoginView extends ConsumerWidget {
  LoginView({super.key});
  final TextEditingController _emailController = TextEditingController();
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
                AppText.heading4("Login"),
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
                  title: "Password",
                  hintText: "********",
                  controller: _passwordController,
                  isPassword: true,
                ),
                Gap.h10,
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: AppText.body1("Forgot Password?"),
                  ),
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
                        AppText.body1("Remeber login details"),
                      ],
                    ),
                  ),
                ),
                Gap.h24,
                DefaultButton(
                  title: "Login",
                  callback: () {},
                ),
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
