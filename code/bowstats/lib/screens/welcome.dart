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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/logo.svg",
                  height: MediaQuery.of(context).size.height * kLogoRatio,
                  semanticsLabel: "Logo BowStats",
                ),
                  const Text("Bienvenue sur",
                  style: kTitleText,
                  ),
                const Text("BowStats",
                  style: kMintTitleText,
                  ),
              ],
            )
        ),
      ),
    );
  }
}
