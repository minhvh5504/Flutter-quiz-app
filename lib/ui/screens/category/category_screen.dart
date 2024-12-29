import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:app_flutter_demo/apps/routes/router_name.dart';
import 'package:app_flutter_demo/apps/utils/const.dart';
import 'package:app_flutter_demo/models/category_model.dart';
import 'package:app_flutter_demo/providers/category_provider.dart';
import 'package:app_flutter_demo/widgets/background_custom.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCustom(),
          SafeArea(
            child: FutureBuilder(
              future: context.read<CategoryProvider>().getListTopic(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Category> data = snapshot.data as List<Category>;
                  return GridView.builder(
                    padding: EdgeInsets.symmetric(
                        horizontal: paddingCustom(context)),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 1,
                    ),
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          context.goNamed(RoutersName.articleName, extra: {
                            'id': data[index].id,
                            "name": data[index].name
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.primaries[index],
                          ),
                          child: Align(
                            child: Text(data[index].name),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    child: const Center(
                      child: Text('No Data'),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
