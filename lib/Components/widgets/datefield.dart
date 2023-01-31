import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:reusable_widgets/Components/style/textfield.dart';

class DateFieldWidget extends StatelessWidget {

  final bool enabled;
  final TextEditingController controller;

  DateFieldWidget(
      {super.key,
        required this.enabled,
        required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: enabled ==true ?DateTimeFormField(
        decoration: MyStyle.enabledDate,
        mode: DateTimeFieldPickerMode.date,
        autovalidateMode: AutovalidateMode.always,
        validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
        onDateSelected: (DateTime value) {
          print("${value.day}"'/'"${value.month}"'/'"${value.year}");
        },
      ):IgnorePointer(
        child: DateTimeFormField(
          decoration: MyStyle.disabledfield,
          mode: DateTimeFieldPickerMode.date,
          autovalidateMode: AutovalidateMode.always,
          validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
          onDateSelected: (DateTime value) {
            print("${value.day}"'/'"${value.month}"'/'"${value.year}");
          },
        ),
      ),
    );
  }
}
