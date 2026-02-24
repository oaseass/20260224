import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';
import 'screens/input_screen.dart';
import 'screens/result_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const OnboardingScreen(),
  '/input': (context) => const InputScreen(),
  '/result': (context) => const ResultScreen(),
};
