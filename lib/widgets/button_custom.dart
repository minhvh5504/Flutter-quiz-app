import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget{
  String title;
  ButtonCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        child: InkWell(
          splashColor: Colors.yellow,
          onTap: (){
            print('button');
          },
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: getHeight(context) * 0.02),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff44A3AE),
                  Color(0xff33FBC9),
                ],
              ),
            ),
            width: getWidth(context),
            child:  Align(
              child:  Text(title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      );
  }
}