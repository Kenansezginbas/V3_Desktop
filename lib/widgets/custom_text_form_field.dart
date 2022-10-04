import 'package:flutter/material.dart';
import 'package:pet_tinder/utils/custom_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  final hint, maxLines;
  String savedValue;
  CustomTextFormField(
      {super.key,
      required this.hint,
      required this.savedValue,
      required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        maxLines: maxLines,
        validator: (val) {
          if (val!.isEmpty) {
            return "Lütfen Alanları Doldurunuz";
          } else {
            return null;
          }
        },
        onSaved: (val) {
          savedValue = val!.trim();
        },
        decoration: CustomInputDecoration.customInputDecorationDialog(hint),
        cursorColor: Colors.black,
      ),
    );
  }
}
