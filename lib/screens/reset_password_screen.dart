import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/register_screen.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [DarkModeWidget()],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your email and we will send you a link to reset your password.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          hintStyle: TextStyle(
                            color: customColors.greyScale400,
                            fontSize: 13.14,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: customColors.greyScale400,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: customColors.primaryGreen800),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: customColors.primaryGreen800,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(13.14),
                              ),
                            ),
                            minimumSize: const Size(double.infinity, 61)),
                        child: const Text(
                          "Reset My Password",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
