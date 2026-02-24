import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final birthdate = args?['birthdate'] ?? '';
    final birthtime = args?['birthtime'] ?? '';
    final calendar = args?['calendar'] ?? '';

    // Dummy response
    final summary = '당신은 침착하고 결단력 있는 성향입니다. 대인관계에서 신뢰를 얻는 타입입니다.';

    return Scaffold(
      appBar: AppBar(title: const Text('분석결과')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('생년월일: $birthdate  시: $birthtime  달력: $calendar', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height:12),
            Text('통합 리포트', style: const TextStyle(color: Color(0xFFFFD66B), fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height:8),
            Text(summary, style: const TextStyle(color: Colors.white)),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){ Navigator.popUntil(context, ModalRoute.withName('/')); }, child: const Text('홈으로'))
          ],
        ),
      ),
    );
  }
}
