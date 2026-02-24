import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  DateTime? _birthDate;
  String _birthHour = '0';
  String _calendar = 'solar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('사주 입력')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text(_birthDate==null? '생년월일 선택' : _birthDate!.toIso8601String().split('T')[0], style: const TextStyle(color: Colors.white)),
              trailing: ElevatedButton(
                onPressed: () async {
                  final d = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime.now());
                  if (d!=null) setState(()=>_birthDate=d);
                }, child: const Text('선택')),
            ),
            const SizedBox(height:12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: '태어난 시'),
              value: _birthHour,
              items: List.generate(24, (i) => DropdownMenuItem(value: '$i', child: Text('$i:00'))),
              onChanged: (v)=>setState(()=>_birthHour=v ?? '0'),
            ),
            const SizedBox(height:12),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: '달력'),
              value: _calendar,
              items: const [DropdownMenuItem(value: 'solar', child: Text('양력')), DropdownMenuItem(value: 'lunar', child: Text('음력'))],
              onChanged: (v)=>setState(()=>_calendar=v ?? 'solar'),
            ),
            const SizedBox(height:20),
            ElevatedButton(onPressed: (){
              // navigate to result with dummy params
              Navigator.pushNamed(context, '/result', arguments: {
                'birthdate': _birthDate?.toIso8601String().split('T')[0] ?? '',
                'birthtime': _birthHour,
                'calendar': _calendar
              });
            }, child: const Text('분석하기'))
          ],
        ),
      ),
    );
  }
}
