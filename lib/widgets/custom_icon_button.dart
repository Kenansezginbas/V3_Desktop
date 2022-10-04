import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_colors.dart';
import 'package:pet_tinder/utils/custom_text_styles.dart';

class CustomIconButton extends StatelessWidget {
  final buttonText, height, width, color;
  final VoidCallback onPressed;

  const CustomIconButton(
      {Key? key,
      required this.buttonText,
      required this.height,
      required this.width,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.height * width,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              buttonText,
              style: CustomTextStyle.buttonWhiteTextStyle,
            ),
            CircleAvatar(
              backgroundColor: CustomColors.turquoiseColor,
              radius: 15,
              child: Icon(
                Icons.arrow_right,
                color: CustomColors.initialButtonColor,
              ),
            )
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
