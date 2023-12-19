import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/utilities/fontstyle.dart';

Widget fillBtn(String name, VoidCallback onPress,
        {bool state = true,
        Color color = light,
        double height = 55,
        double width = double.infinity}) =>
    MaterialButton(
      onPressed: state ? onPress : null,
      splashColor: transparent,
      disabledColor: dark,
      textColor: light,
      elevation: 0,
      height: height,
      minWidth: width,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: h500(name, color: dark),
    );

Widget outlineBtn(String name, VoidCallback onPress,
        {bool state = true,
        double height = 45,
        double width = double.infinity}) =>
    MaterialButton(
      onPressed: state ? onPress : null,
      splashColor: transparent,
      textColor: dark,
      elevation: 0,
      height: height,
      minWidth: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: const BorderSide(color: light),
      ),
      child: h500(name),
    );
