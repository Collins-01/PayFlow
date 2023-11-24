// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payflow/extensions/extensions.dart';
import 'package:payflow/presentation/shared_widgets/shared_widgets.dart';
import 'package:payflow/utils/utils.dart';

class DefaultTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final String? errorMessage;
  final bool isPassword;
  final String? Function(String?)? validator;
  const DefaultTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.errorMessage,
    this.isPassword = false,
    this.validator,
  }) : super(key: key);

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.heading5(
          widget.title,
        ),
        Gap.h8,
        Container(
          height: 48,
          width: context.getDeviceWidth,
          decoration: const BoxDecoration(
            color: Color(0xffF1F3F3),
            // border: Border.all(
            //   color: AppColors.greyColor,
            // ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: TextFormField(
            controller: widget.controller,
            style: bodyStyle1,
            obscureText: widget.isPassword ? _isVisible : false,
            validator: widget.validator,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              hintStyle: bodyStyle2,
              suffixIcon: !widget.isPassword
                  ? const SizedBox()
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: Icon(
                        _isVisible ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.textColor,
                      ),
                    ),
              contentPadding: const EdgeInsets.only(
                left: 16,
                top: 14,
              ),
            ),
          ),
        ),
        Gap.h6,
      ],
    );
  }
}
