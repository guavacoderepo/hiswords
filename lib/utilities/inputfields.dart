import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';

Widget textbox(
  String hint,
  ctr,
  IconData icon, {
  TextInputType type = TextInputType.text,
}) =>
    TextFormField(
      style: const TextStyle(color: light, fontSize: 15),
      controller: ctr,
      decoration: InputDecoration(
        prefixIconColor: light,
        prefixIcon: Icon(icon),
        hintText: hint,
      ),
      keyboardType: type,
    );

Widget passwordbox(
  String hint,
  ctr,
  IconData icon,
  bool visible,
  VoidCallback onPressed,
) =>
    TextFormField(
      style: const TextStyle(color: light, fontSize: 15),
      controller: ctr,
      decoration: InputDecoration(
        prefixIconColor: light,
        prefixIcon: Icon(icon),
        hintText: hint,
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: visible
              ? const Icon(
                  Icons.visibility_outlined,
                  color: light,
                )
              : const Icon(
                  Icons.visibility_off_outlined,
                  color: light,
                ),
        ),
      ),
      obscureText: visible,
    );
