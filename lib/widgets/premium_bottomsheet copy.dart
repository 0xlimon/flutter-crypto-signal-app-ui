import 'dart:ui';

import 'package:crypto_signal/constants/constants.dart';
import 'package:flutter/material.dart';

class PremiumBottomSheet extends StatefulWidget {
  const PremiumBottomSheet({super.key});

  @override
  State<PremiumBottomSheet> createState() => _PremiumBottomSheetState();
}

class _PremiumBottomSheetState extends State<PremiumBottomSheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's gain profit",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      "To unlock premium signals, you can buy any of the following plans."),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 76,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 139, 84, 84),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(0, 192, 251, 232),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
