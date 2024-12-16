import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Let's Play QuizGame",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: getHeight(context) * 0.03,
        ),
        const Text('Bộ câu hỏi hỏi trách nghiệm lập trình'),
        SizedBox(
          height: getHeight(context) * 0.1,
        ),
      ],
    );
  }
}
