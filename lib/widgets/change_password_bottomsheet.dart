import 'dart:ui';

import 'package:crypto_signal/constants/constants.dart';
import 'package:flutter/material.dart';

class ChangePasswordBottomSheet extends StatelessWidget {
  const ChangePasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Enter Your New Password",
                      hintStyle: TextStyle(
                        color: customColors.greyScale400,
                        fontSize: 13.14,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: customColors.greyScale400,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: customColors.primaryGreen800),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: "Enter Confrim Password",
                      hintStyle: TextStyle(
                        color: customColors.greyScale400,
                        fontSize: 13.14,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: customColors.greyScale400,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: customColors.primaryGreen800),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
                      "Change Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
