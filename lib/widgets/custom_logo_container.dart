import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_colors.dart';

class CustomLogoContainer extends StatelessWidget {
  final String logoBckImage, logoCatImage;
  const CustomLogoContainer(
      {Key? key, required this.logoBckImage, required this.logoCatImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .30,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            logoBckImage,
          ),
        ),
      ),
      child: Center(
        child: Image(
          image: NetworkImage(logoCatImage),
          loadingBuilder: customLoadingBuilder,
        ),
      ),
    );
  }

  Widget customLoadingBuilder(
      BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) {
      return child;
    }
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }
}
