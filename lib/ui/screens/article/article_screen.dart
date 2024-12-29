import 'package:flutter/material.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_box_content.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_loading.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_title.dart';
import 'package:app_flutter_demo/widgets/background_custom.dart';

// ignore: must_be_immutable
class ArticleScreen extends StatelessWidget {
  int idTopic;
  String name;
  ArticleScreen({super.key, required this.idTopic, required this.name});
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
                      ArticleTitle(name: name),
                      SizedBox(height: getHeight(context) * 0.04),
                      const ArticleLoading(),
                      SizedBox(height: getHeight(context) * 0.04),
                      ArticleBoxContent(
                        idTopic: idTopic,
                      ),
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
