import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reusable_widgets/Components/style/textfield.dart';
import 'package:reusable_widgets/controller/getX.dart';

class DropMenuWidget extends StatelessWidget {
  SoliderController soliderController = SoliderController();
  final List<String> items;
  final bool enabled;

  // final String hintText;
  final TextEditingController controller;

  DropMenuWidget(
      {super.key,
      required this.items,
      required this.enabled,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => enabled == true
        ? Container(
            width: 350,
            decoration: BoxDecoration(
                color: Color(0xff767676),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.0)),
            child: DropdownButton(
              underline: SizedBox(),
              isExpanded: true,
              value: soliderController.selected.value,
              items: items.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              icon: IconButton(
                onPressed: () {},
                color: Colors.white,
                iconSize: 30,
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
              ),
              onChanged: (String? newValue) {
                soliderController.setSelected(newValue!);
              },
            ),
          )
        : Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 0.0)),
            width: 350,
            child: IgnorePointer(
              child: DropdownButton(
                underline: SizedBox(),
                isExpanded: true,
                value: soliderController.selected.value,
                items: items.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                icon: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 30,
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                ),
                onChanged: (String? newValue) {

                },
              ),
            ),
          ));
  }
}
