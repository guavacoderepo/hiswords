import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/pages/landingpage.dart';
import 'package:hisword/utilities/buttons.dart';
import 'package:hisword/utilities/fontstyle.dart';
import 'package:hisword/utilities/inputfields.dart';
import 'package:hisword/utilities/spacing.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailctr = TextEditingController();
  final TextEditingController pwdctr = TextEditingController();
  final TextEditingController pwd2ctr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vertical(10),
                h500("Welcome to Hiswold", color: light, size: 20),
                vertical(10),
                h500(
                  "Let's get started on a click",
                  overflow: TextOverflow.visible,
                  color: light,
                  size: 12,
                ),

                // form section
                vertical(27),

                h400("Full Name", size: 13, align: TextAlign.left),
                vertical(10),
                textbox("Enter your Full Name", emailctr, Icons.person),

                vertical(16),

                h400("Email", size: 13, align: TextAlign.left),
                vertical(10),
                textbox("Enter your Email", emailctr, Icons.mail,
                    type: TextInputType.emailAddress),

                vertical(16),

                h400("Password", size: 13, align: TextAlign.left),
                vertical(10),
                passwordbox("Enter your Password", emailctr, Icons.password,
                    false, () {}),

                vertical(16),

                h400("Re-Type Password", size: 13, align: TextAlign.left),
                vertical(10),
                passwordbox(
                    "Re-Type Password", emailctr, Icons.password, false, () {}),

                vertical(50),

                fillBtn(
                  "Submit",
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()),
                  ),
                ),
                vertical(20)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
