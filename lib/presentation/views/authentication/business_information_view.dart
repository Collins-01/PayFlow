import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payflow/extensions/extensions.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class BusinessInformationView extends ConsumerWidget {
  BusinessInformationView({super.key});
  final TextEditingController _typeOfBusinessController =
      TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.h(
                  context.deviceHeightPercentage(percentage: 5),
                ),
                const Center(child: AppLogo()),
                Gap.h(
                  context.deviceHeightPercentage(percentage: 2),
                ),
                AppText.heading3("Business Information"),
                AppText.body1("Register your Business Information "),
                Gap.h(
                  context.deviceHeightPercentage(percentage: 3),
                ),
                DefaultTextField(
                  title: "Type Of Business",
                  hintText: "",
                  controller: _typeOfBusinessController,
                ),
                Gap.h20,
                DefaultTextField(
                  title: "Business Name",
                  hintText: "",
                  controller: _businessNameController,
                ),
                Gap.h(
                  context.deviceHeightPercentage(percentage: 28),
                ),
                DefaultButton(
                  title: "Next",
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
