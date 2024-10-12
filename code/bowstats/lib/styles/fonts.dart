import 'package:flutter/cupertino.dart';
import 'colors.dart';

const kTitleSize = 35.0;
const kTitleSizeL = kTitleSize * 2.142;

const kTextSize = 15.0;
const kTextSizeL = kTextSize * 1.333;

const kTitleText = TextStyle(
    color: kWhiteColor,
    fontWeight: FontWeight.bold
    , fontSize: kTitleSize
);

const kMintTitleText = TextStyle(
    color: kMintColor,
    fontWeight: FontWeight.bold,
    fontSize: kTitleSizeL
);

const kNormalText = TextStyle(
  color: kWhiteColor,
  fontWeight: FontWeight.normal,
  fontSize: kTextSize
);

const kMintButtonText = TextStyle(
  color: kNightColor,
  fontWeight: FontWeight.bold,
  fontSize: kTextSizeL
);

const kTransparentButtonText = TextStyle(
  color: kWhiteColor,
  fontWeight: FontWeight.bold,
  fontSize: kTextSizeL
);
