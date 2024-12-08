import 'package:flutter/material.dart';

class HomeDropdown extends StatelessWidget {
  const HomeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Chọn ngôn ngữ của bạn',
          style: TextStyle(
            color: Colors.white70,
          )),
      isExpanded: true,
      style: const TextStyle(
        color: Colors.black,
      ),
      items: <String>['Dart','Java','C++','C#'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}