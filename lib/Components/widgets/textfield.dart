import 'package:flutter/material.dart';
import 'package:reusable_widgets/Components/style/textfield.dart';

class TextFieldWidget extends StatelessWidget {
  final bool enabled;
  final String hintText;
  final TextEditingController controller;

  TextFieldWidget(
      {super.key,
      required this.hintText,
      required this.enabled,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: enabled == true
          ? TextFormField(
              controller: controller,
              enabled: enabled,
              decoration: MyStyle.enabledfield,
            )
          : TextFormField(
              controller: controller,
              enabled: enabled,
              decoration: MyStyle.disabledfield,
            ),
    );
  }
}
