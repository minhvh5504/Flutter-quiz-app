import 'package:flutter/material.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_yotube.dart';

Future<void> showModal(context) => showModalBottomSheet(
  isScrollControlled: true,
  backgroundColor: Colors.transparent,
  context: context,
  builder: (context) => FractionallySizedBox(
    heightFactor: 0.9,
    child: Container(
      width: getWidth(context),
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            20,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(text: 'Đáp án '),
                      TextSpan(
                          text: '123',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                          )),
                      TextSpan(
                          text:
                          ' của bạn chưa chính xác! Đáp án đúng là: '),
                      TextSpan(
                          text: '123aaa',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: getHeight(context) * 0.02),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(text: 'Bạn xem thêm video giải đáp  '),
                    ],
                  ),
                ),
                SizedBox(height: getHeight(context) * 0.02),
                Expanded(child: ArticleYoutube(id: 'IHfjc-tczXI'))
              ],
            ),
          )
        ],
      ),
    ),
  ),
);