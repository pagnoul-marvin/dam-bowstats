import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/spacings.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/logo.svg",
        height: MediaQuery.of(context).size.height * kLogoRatio,
        semanticsLabel: "Logo BowStats");
  }
}
