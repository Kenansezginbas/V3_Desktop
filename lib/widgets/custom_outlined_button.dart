import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final buttonText;
  final IconData iconData;
  final Color color;
  CustomOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        onPressed: onPressed,
        label: Text(buttonText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white)),
        icon: Icon(iconData, color: Colors.white),
        style: OutlinedButton.styleFrom(backgroundColor: color),
      ),
    );
  }
}
