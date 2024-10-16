import 'package:bowstats/screens/login.dart';
import 'package:bowstats/screens/register.dart';
import 'package:bowstats/styles/colors.dart';
import 'package:bowstats/styles/fonts.dart';
import 'package:bowstats/styles/spacings.dart';
import 'package:bowstats/widgets/logo.dart';
import 'package:bowstats/widgets/nav_button.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: kNightColor,
        child: const SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kUpAndDownMargin),
              Logo(),
              SizedBox(height: kVerticalMarginS),
              Text("Bienvenue sur", style: kTitleText),
              SizedBox(height: kUpAndDownMargin),
              Text("BowStats", style: kMintTitleText),
              SizedBox(height: kVerticalHomeButton),
              NavButton(
                backgroundColor: kTransparentColor,
                navigateTo: Login(),
                textStyle: kTransparentButtonText,
                horizontalPadding: 94,
                verticalPadding: 24,
                side: BorderSide(color: kMintColor),
                text: "Se connecter",
              ),
              SizedBox(height: kVerticalMarginS),
              NavButton(
                backgroundColor: kMintColor,
                navigateTo: Register(),
                textStyle: kMintButtonText,
                horizontalPadding: 76,
                verticalPadding: 24,
                text: "Créer un compte",
              )
            ],
          ),
        )),
      ),
    );
  }
}
