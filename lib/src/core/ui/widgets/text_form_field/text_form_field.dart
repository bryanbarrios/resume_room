import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_room/src/core/ui/theme/index.dart';
import 'package:resume_room/src/core/ui/theme/theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.enabled,
    this.obscureText = false,
    this.maxLines,
    this.keyboardType,
    this.controller,
    this.textInputAction,
    this.validator,
    this.readOnly = false,
    this.maxLength,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final bool? enabled;
  final bool readOnly;
  final bool obscureText;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodyText2?.bold.copyWith(
                color: KColors.blueGray[600],
              ),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          controller: controller,
          validator: validator,
          maxLines: maxLines,
          maxLength: maxLength,
          obscureText: obscureText,
          readOnly: readOnly,
          enabled: enabled,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
        )
      ],
    );
  }
}
