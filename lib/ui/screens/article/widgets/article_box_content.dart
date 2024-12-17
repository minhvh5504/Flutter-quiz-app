import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/apps/utils/parse_htlm.dart';
import 'package:app_flutter_demo/ui/screens/article/widgets/article_modal.dart';
import 'package:app_flutter_demo/widgets/button_custom.dart';
import 'package:flutter_highlighter/themes/a11y-dark.dart';

class ArticleBoxContent extends StatefulWidget {
  const ArticleBoxContent({super.key});

  @override
  State<ArticleBoxContent> createState() => _ArticleBoxContentState();
}

class _ArticleBoxContentState extends State<ArticleBoxContent> {
  final PageController pageController = PageController();

  void handleSubmit() async {
    await showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, int) {
        return Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 40.0,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const Text(
                'Esse deserunt illum perspiciatis numquam \net.',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff333333),
                      Color(0xff33FBC9),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: getWidth(context), // Chiều rộng đầy đủ
                child: HighlightView(
                  parseHtmlString('''
                    <p>
                     <br>for (int i = 0; i &lt; n; i++)
                    {<br>
                        if (i % 3 == 0) 
                        {<br>
                          cout << i;
                        }<br>
                    }<br>
                    </p>
                  '''),
                  theme: a11yDarkTheme,
                  language: 'dart',
                  padding: const EdgeInsets.all(12),
                  textStyle: const TextStyle(
                    fontFamily: 'Source Code Pro',
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              const Text(
                'Đáp án của bạn :',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: getHeight(context) * 0.02),
              TextFormField(
                onChanged: (_) {},
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (value) {},
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Nhập đáp án của bạn tại đây',
                ),
              ),
              SizedBox(height: getHeight(context) * 0.04),
              ButtonCustom(
                onTap: handleSubmit,
                title: 'Xem kết quả',
              ),
            ],
          ),
        );
      },
    );
  }
}
