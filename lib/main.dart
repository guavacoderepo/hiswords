import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/views/onbording/signup_03.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: light,
                width: 0.2,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: light,
                width: 0.4,
              ),
            ),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            fillColor: dark,
            filled: true,
            hintStyle: TextStyle(
              fontSize: 15,
              color: light.withOpacity(0.5),
              fontWeight: FontWeight.w300,
            ),
            contentPadding: const EdgeInsetsDirectional.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
          ),
          scaffoldBackgroundColor: dark,
          fontFamily: "jarkata",
        ),
        // scroll behaviour section
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child!,
          );
        },
        home: const Signup(),
      ),
    );

// scroll behavior
class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
