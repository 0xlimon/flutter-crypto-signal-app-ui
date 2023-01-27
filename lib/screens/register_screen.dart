import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/login_screen.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  "Create your Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "It only  takes a minute to create your account.",
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
                            fontSize: 13.14,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.email),
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
                          hintText: "Enter Your Password",
                          hintStyle: TextStyle(
                            color: customColors.greyScale400,
                            fontSize: 13.14,
                            fontWeight: FontWeight.w500,
                          ),
                          prefixIcon: Icon(Icons.lock),
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
                        ),
                      ),
                      const SizedBox(
                        height: 16,
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
                          "Create Account",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: customColors.greyScale400,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
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
                            backgroundColor: customColors.greyScale300,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(13.14),
                              ),
                            ),
                            minimumSize: const Size(double.infinity, 61)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png'),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Register with Google",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: customColors.greyScale800),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already registered?",
                              style: TextStyle(
                                color: customColors.greyScale400,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                " Login",
                                style: TextStyle(
                                  color: customColors.primaryGreen800,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
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
