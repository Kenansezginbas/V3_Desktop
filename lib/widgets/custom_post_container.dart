import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_colors.dart';

class CustomPostContainer extends StatelessWidget {
  final String logoBckImage, logoCatImage;
  const CustomPostContainer(
      {Key? key, required this.logoBckImage, required this.logoCatImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context) .size.width,
          child: Image(
            image: NetworkImage(logoCatImage),
            loadingBuilder: customLoadingBuilder,
            fit: BoxFit.cover,
          ),
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
