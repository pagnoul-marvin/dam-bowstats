import 'package:bowstats/styles/colors.dart';
import 'package:bowstats/styles/fonts.dart';
import 'package:bowstats/styles/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: kUpAndDownMargin),
            SvgPicture.asset(
              "assets/icons/logo.svg",
              height: MediaQuery.of(context).size.height * kLogoRatio,
              semanticsLabel: "Logo BowStats",
            ),
            const SizedBox(height: kVerticalMarginS),
            const Text(
              "Bienvenue sur",
              style: kTitleText,
            ),
            const SizedBox(height: kUpAndDownMargin),
            const Text(
              "BowStats",
              style: kMintTitleText,
            ),
            const SizedBox(height: kVerticalHomeButton),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: kMintColor),
                backgroundColor: kTransparentColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 94, vertical: 24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text("Se connecter", style: kTransparentButtonText),
            ),
            const SizedBox(height: kVerticalMarginS),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: kMintColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 76, vertical: 24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text("Créer un compte", style: kMintButtonText),
            ),
          ],
        )),
      ),
    );
  }
}
