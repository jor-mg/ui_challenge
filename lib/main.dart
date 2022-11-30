import 'package:flutter/material.dart';

//Page
import 'package:ui_challenge/pages/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '',
      home: OnboardingPage(),
    );
  }
}
