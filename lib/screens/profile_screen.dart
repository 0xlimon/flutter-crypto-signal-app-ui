import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';
import 'package:crypto_signal/widgets/change_password_bottomsheet.dart';
import 'package:crypto_signal/widgets/premium_bottomsheet%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/dark_theme_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Profile",
        ),
        actions: [DarkModeWidget()],
        centerTitle: true,
        leading: Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Icon(
                Icons.logout,
                color: customColors.greyScale400,
              )),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 24, top: 5, right: 24),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AccountSection(),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 20)),
                SliverToBoxAdapter(
                  child: GeneralSection(),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 20)),
                SliverToBoxAdapter(
                  child: PrivacySection(),
                ),
                SliverPadding(padding: EdgeInsets.only(top: 20)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: Text(
                        "App Version: 0.10.0",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: customColors.greyScale400),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class PrivacySection extends StatelessWidget {
  const PrivacySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Privacy", style: Theme.of(context).textTheme.subtitle1),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.security,
                color: customColors.primaryGreen800,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Privacy Agreement",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.gavel,
                color: customColors.primaryGreen800,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Terms of use",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class GeneralSection extends StatefulWidget {
  const GeneralSection({
    Key? key,
  }) : super(key: key);

  @override
  State<GeneralSection> createState() => _GeneralSectionState();
}

class _GeneralSectionState extends State<GeneralSection> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "General",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: customColors.greyScale400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                themeChange.darkTheme ? Icons.dark_mode : Icons.light_mode,
                color: customColors.primaryGreen800,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Dark Mode",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: themeChange.darkTheme,
                  onChanged: (bool value) {
                    setState(() {
                      isDarkMode = value;
                      themeChange.darkTheme = value;
                    });
                  },
                  activeColor: customColors.primaryGreen800,
                  trackColor: customColors.greyScale300,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.support_agent,
                color: customColors.primaryGreen800,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Support",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.telegram,
                color: customColors.primaryGreen800,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Telegram Channel",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star_rate,
                color: customColors.orange,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Rate Us Google Play",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
      ],
    );
  }

  // String getLangName(String code) {
  //   final currentLang =
  //       Language.LanguageList().where((element) => element.code == code);
  //   if (currentLang.isNotEmpty) {
  //     return currentLang.first.name;
  //   }
  //   return 'ondifined';
  // }
}

class AccountSection extends StatelessWidget {
  const AccountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: customColors.greyScale400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 68,
          decoration: BoxDecoration(
            color: customColors.primaryGreen800,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 48,
                    child: Image.asset("assets/images/user-card.png")),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login your account",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please login your account.",
                      style: TextStyle(
                          fontSize: 12,
                          color: customColors.greyScale300,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.chevron_right,
                  color: customColors.greyScale300,
                  size: 24,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              // barrierColor: Colors.red,
              // backgroundColor: Colors.transparent,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: ChangePasswordBottomSheet(),
                );
              },
            );
          },
          child: Container(
            height: 64,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.password_rounded,
                  color: customColors.primaryGreen800,
                  size: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.chevron_right,
                  color: customColors.greyScale400,
                  size: 24,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.workspace_premium,
                color: customColors.orange,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Go Premium",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.redeem,
                color: customColors.orange,
                size: 24,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Redeem code",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                color: customColors.greyScale400,
                size: 24,
              )
            ],
          ),
        ),
      ],
    );
  }
}
