import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/widgets/background_custom.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Danh sách các cấp độ
    final levels = [
      'Cơ bản',
      'Nâng cao',
      'Câu điều kiện',
      'Vòng lặp',
      'Mảng',
      'Cấu trúc',
      'Tổng Hợp'
    ];

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          SafeArea(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: paddingCustom(context),
                vertical: getHeight(context) * 0.05,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 1,
              ),
              itemCount: levels.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.primaries[index % Colors.primaries.length],
                  ),
                  child: Align(
                    child: Text(
                      levels[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
