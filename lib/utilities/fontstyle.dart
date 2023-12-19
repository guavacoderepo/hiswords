import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';

h400(String text,
        {double size = 12,
        Color color = light,
        TextAlign align = TextAlign.center,
        TextOverflow overflow = TextOverflow.ellipsis}) =>
    Text(
      text,
      overflow: overflow,
      textAlign: align,
      style:
          TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: size),
    );

h500(String text,
        {double size = 15,
        Color color = dark,
        TextAlign align = TextAlign.center,
        TextOverflow overflow = TextOverflow.ellipsis}) =>
    Text(
      text,
      overflow: overflow,
      textAlign: align,
      style:
          TextStyle(fontWeight: FontWeight.w500, color: color, fontSize: size),
    );
