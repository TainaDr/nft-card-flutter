import 'package:flutter/material.dart';
import 'package:nft/_core/constant.dart';
import 'package:nft/ui/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.blue500),
      ),
      initialRoute: '/card',
      routes: {'/card': (context) => CardScreen()},
    );
  }
}
