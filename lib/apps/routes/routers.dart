import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app_flutter_demo/apps/routes/router_name.dart';
import 'package:app_flutter_demo/ui/screens/article/article_screen.dart';
import 'package:app_flutter_demo/ui/screens/category/category_screen.dart';
import 'package:app_flutter_demo/ui/screens/home/home_screen.dart';

class RouterConfigCustom {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: RoutersPath.homePath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            name: RoutersName.categoryName,
            path: RoutersPath.categoryPath,
            builder: (BuildContext context, GoRouterState state) {
              return const CategoryScreen();
            },
            routes: <RouteBase>[
              GoRoute(
                name: RoutersName.articleName,
                path: RoutersName.articleName,
                builder: (BuildContext context, GoRouterState state) {
                  Map data = state.extra as Map;

                  int id = data['id'];
                  String name = data['name'];
                  return ArticleScreen(
                    idTopic: id,
                    name: name,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
