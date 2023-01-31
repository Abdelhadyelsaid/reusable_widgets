import 'package:flutter/material.dart';

class MyStyle {
  static const enabledfield = InputDecoration(
    border: InputBorder.none,
    counter: Offstage(),
    filled: true,
    fillColor: Color(0xff767676),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1, color: Color(0xff000000)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );

  static const disabledfield = InputDecoration(
    border: InputBorder.none,
    counter: Offstage(),
    filled: true,
    fillColor: Color(0xff000000),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1, color: Color(0xff000000)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
  static const enabledDate = InputDecoration(
    border: InputBorder.none,
    suffixIcon: Icon(Icons.event_note),
    counter: Offstage(),
    filled: true,
    fillColor: Color(0xff767676),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1, color: Color(0xff000000)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
