import 'package:bowstats/screens/welcome.dart';
import 'package:bowstats/styles/colors.dart';
import 'package:bowstats/styles/fonts.dart';
import 'package:bowstats/styles/spacings.dart';
import 'package:bowstats/widgets/logo.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: kNightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: kUpAndDownMarginS),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: kDarkMintColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Welcome()));
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: kMintColor,
                  ),
                ),
              ),
              const Logo(),
              const SizedBox(height: kVerticalMarginL),
              const Text("Bienvenue", style: kTitleText),
              const SizedBox(height: kVerticalMarginS),
              const Text("Entrez vos informations", style: kExplicationsText)
            ],
          ),
        ),
      ),
    );
  }
}
