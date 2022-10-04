import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_text_styles.dart';

class CustomTextWidget extends StatelessWidget {
  final text;
  final TextStyle? textStyle;
  const CustomTextWidget({Key? key, this.text, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}
