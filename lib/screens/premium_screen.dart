import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/payment_screen.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/dark_theme_provider.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [DarkModeWidget()],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          iconSize: 20.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            SizedBox(
                width: 100, child: Image.asset('assets/images/premium.png')),
            // Container(
            //   height: 100,
            //   width: 100,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     gradient: LinearGradient(
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //       colors: [
            //         Color(0xff348F50),
            //         Color(0xff56B4D3),
            //       ],
            //     ),
            //   ),
            //   child: Center(
            //     child: Icon(
            //       Icons.military_tech,
            //       size: 70,
            //       color: Color(0xff348F50),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Upgrade Premium",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "You can upgrade your plan anytime and use special signals for more profit.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
                    ));
              },
              child: Container(
                height: 76,
                decoration: BoxDecoration(
                  color: Color.fromARGB(52, 69, 69, 69),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: customColors.greyScale700,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 month",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Total price \$15",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$15",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Monthly",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 76,
              decoration: BoxDecoration(
                color: Color.fromARGB(52, 69, 69, 69),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: customColors.greyScale700,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 month",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Total price \$42",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$14",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Monthly",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 76,
              decoration: BoxDecoration(
                color: Color.fromARGB(50, 10, 178, 125),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: customColors.primaryGreen800,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "6 month",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              height: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                                color: customColors.orange,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Center(
                                  child: Text(
                                    "25% saving",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Total price \$72",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$12",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Monthly",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text(
              "Your account will automatically become Premium.",
              style: TextStyle(color: customColors.greyScale600, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
