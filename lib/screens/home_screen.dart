import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "CryptoSignal",
          style: TextStyle(
            color: customColors.greyScale800,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Image.asset('assets/images/Notification.png'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 22),
                height: 100,
                decoration: BoxDecoration(
                  color: customColors.primaryGreen800,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Join to our",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Telegram Channel",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.telegram_sharp,
                          color: customColors.primaryGreen800,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
