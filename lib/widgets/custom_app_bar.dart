import 'package:flutter/material.dart';

import '../utils/custom_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final List<Widget> actions;
  const CustomAppBar({super.key, this.title, required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title, style: CustomTextStyle.appBarTextStyle),
      centerTitle: true,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
