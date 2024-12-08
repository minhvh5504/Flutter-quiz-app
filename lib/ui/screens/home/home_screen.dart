import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/ui/screens/home/widgets/home_dropdown.dart';
import 'package:app_flutter_demo/ui/screens/home/widgets/home_title.dart';
import 'package:app_flutter_demo/widgets/background_custom.dart';
import 'package:app_flutter_demo/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_demo/widgets/background_custom.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeTitle(),
                    const HomeDropdown(),
                    SizedBox(height: getHeight(context) *0.06),
                    ButtonCustom(title: 'Bắt Đầu thực hành'),
                ],
              ),
           ),
          ),
        ],
      ),
    );
  }
}
