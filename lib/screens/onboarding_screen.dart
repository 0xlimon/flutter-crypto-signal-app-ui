import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/login_screen.dart';
import 'package:crypto_signal/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    _pageIndex = value;
                  });
                },
                itemCount: onboarded_data.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return onBoarding(
                    image: onboarded_data[index].image,
                    title: onboarded_data[index].title,
                    description: onboarded_data[index].description,
                  );
                },
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboarded_data.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: DotIndicator(
                      isActive: index == _pageIndex,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 96,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: customColors.primaryGreen800,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(80),
                    ),
                  ),
                  minimumSize: const Size(327, 56)),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive
            ? customColors.primaryGreen800
            : customColors.primaryGreen400,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

class Onboarded {
  final String image, title, description;

  Onboarded(
    this.image,
    this.title,
    this.description,
  );
}

final List<Onboarded> onboarded_data = [
  Onboarded(
    'assets/images/onboarding.png',
    'Buy and trade top \ncryptocurrencies',
    'There are more than 30+ crypto that you can buy and trade.',
  ),
  Onboarded(
    'assets/images/onboarding1.png',
    'Advanced chart with \nreal-time data',
    'Track your crypto positions and get access to analysis tools.',
  ),
];

class onBoarding extends StatelessWidget {
  const onBoarding({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 104,
          ),
          Image.asset(
            image,
            height: 300,
            width: 324,
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: customColors.greyScale400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
