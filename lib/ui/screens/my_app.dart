import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_flutter_demo/apps/routes/routers.dart';
import 'package:app_flutter_demo/providers/category_provider.dart';
import 'package:app_flutter_demo/providers/question_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CategoryProvider()..getListLanguage(),
        ),
        ChangeNotifierProvider(
          create: (_) => QuestionProvider(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          // ignore: deprecated_member_use
          useMaterial3: true,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        routerConfig: RouterConfigCustom.router,
      ),
    );
  }
}
