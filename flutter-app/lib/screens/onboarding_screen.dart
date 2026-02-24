import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('운명을보는회사원', style: TextStyle(color: Color(0xFFFFD66B), fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const Text('사주와 관상을 결합한 통합 리포트', style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/input'),
                child: const Text('시작하기'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
