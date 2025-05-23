import 'package:flutter/material.dart';

class AppColors {
  // Primary
  static const blue500 = Color.fromARGB(255, 140, 172, 217);
  static const cyan400 = Color.fromARGB(255, 0, 255, 230);

  // Neutral
  static const blue950 = Color.fromARGB(255, 6, 15, 26);
  static const blue900 = Color.fromARGB(255, 11, 24, 42);
  static const blue800 = Color.fromARGB(255, 37, 55, 77);
  static const white = Color.fromARGB(255, 255, 255, 255);
}

abstract class AppText {
  static const TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: AppColors.white,
  );
  static const TextStyle blueText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.blue500,
  );
  static const TextStyle cyanText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.cyan400,
  );
}
