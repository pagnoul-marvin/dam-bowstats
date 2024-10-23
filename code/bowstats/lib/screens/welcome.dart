import 'package:bowstats/screens/register.dart';
import 'package:bowstats/styles/colors.dart';
import 'package:bowstats/styles/fonts.dart';
import 'package:bowstats/styles/others.dart';
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
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: kUpAndDownMargin),
              const Logo(),
              const SizedBox(height: kVerticalMarginS),
              const Text("Bienvenue sur", style: kTitleText),
              const SizedBox(height: kUpAndDownMargin),
              const Text("BowStats", style: kMintTitleText),
              const SizedBox(height: kVerticalHomeButton),
              NavButton(
                backgroundColor: kTransparentColor,
                navigateTo: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> const Register())
                  );
                },
                textStyle: kTransparentButtonText,
                horizontalPadding: kButtonHorizontalPadding,
                verticalPadding: kButtonVerticalPadding,
                borderRadius: kBorderRadius,
                borderColor: kMintColor,
                label: "Se connecter",
              ),
              const SizedBox(height: kVerticalMarginS),
              NavButton(
                backgroundColor: kMintColor,
                navigateTo: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> const Register())
                  );
                },
                textStyle: kMintButtonText,
                horizontalPadding: kSecondButtonHorizontalPadding,
                verticalPadding: kButtonVerticalPadding,
                borderRadius: kBorderRadius,
                label: "Créer un compte",
              )
            ],
          ),
        )),
      ),
    );
  }
}
