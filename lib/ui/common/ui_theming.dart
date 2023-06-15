import 'package:flutter/material.dart';

TextStyle ktHomeHeaderTitleTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: "Rogerex"
);

TextStyle ktSignUpTitleTextStyle = const TextStyle(
    color: Color(0xFF46531F),
    fontSize: 30,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex"
);

TextStyle ktSignUpSubtitleTextStyle = const TextStyle(
    color: Color(0xFF9E9E9E),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Rogerex",
    height: 1.5,
);

TextStyle ktHomeHeaderSubtitleTextStyle = const TextStyle(
    color: Color(0xFF9E9E9E),
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: "Rogerex"
);

TextStyle ktButtonTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex"
);

TextStyle ktButtonTextStyleInv = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex"
);

TextStyle ktOnboardingTitleTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex",
    height: 1.2,
);

TextStyle ktOnboardingSubtitleTextStyle = const TextStyle(
    color: Color(0xFFCFCFCF),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: "Rogerex",
    height: 1.5,
);

TextStyle ktHomeCardTitleStyle = const TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  fontFamily: "Rogerex"
);

TextStyle ktHomeCardAmountStyle = const TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.w700,
  fontFamily: "Rogerex"
);

TextStyle ktHomeCardWalletStyle = const TextStyle(
  color: Color(0xFFCDFF00),
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: "Rogerex"
);

TextStyle ktHomeSlideTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontFamily: "Rogerex"
);

TextStyle ktHomeTransactionTitleStyle = const TextStyle(
    color: Color(0xFF273240),
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex"
);

TextStyle ktHomeTransactionButtonStyle = const TextStyle(
    color: Color(0xFF303030),
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "Rogerex"
);

TextStyle ktHomeTransactionListTitleStyle = const TextStyle(
    color: Color(0xFF273240),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Rogerex"
);

TextStyle ktHomeTransactionListSubtitleStyle = const TextStyle(
    color: Color(0xFF9E9E9E),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: "Rogerex"
);

TextStyle ktHomeTransactionListAmountStyle(bool credit) => credit
    ? const TextStyle(
        color: Color(0xFF98B01F),
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: "Rogerex"
    )
    : const TextStyle(
    color: Color(0xFFD82C0D),
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: "Rogerex"
);

