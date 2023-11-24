// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payflow/extensions/extensions.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback? callback;
  final String title;
  const DefaultButton({
    Key? key,
    this.callback,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: context.getDeviceWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: callback,
        child: AppText.button(
          title,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
