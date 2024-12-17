import 'package:app_flutter_demo/widgets/background_custom.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_box_content.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_loading.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_title.dart';


class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: paddingCustom(context),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ArticleTitle(),
                      SizedBox(height: getHeight(context) * 0.04),
                      const ArticleLoading(),
                      SizedBox(height: getHeight(context) * 0.04),
                      const ArticleBoxContent(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}