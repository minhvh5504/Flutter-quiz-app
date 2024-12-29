import 'package:flutter/material.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Lest\'s play quiz game ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: getHeight(context) * 0.02),
        const Text('Bộ câu hỏi trắc nghiệm lập trình tại ZendVN '),
        SizedBox(height: getHeight(context) * 0.06),
      ],
    );
  }
}
