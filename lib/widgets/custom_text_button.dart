import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final buttonText;
  final GestureTapCallback onPressed;
  const CustomTextButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        buttonText,
        style: CustomTextStyle.titleTextStyle, 
      ),
      onPressed: onPressed,
    );
  }
}
