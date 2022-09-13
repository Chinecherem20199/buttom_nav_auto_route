import 'package:buttom_nav_auto_route/routes/router.gr.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routing',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Bottom Nav Bar with Nested Routing',
    //   home: PostsPage(),
    // );
  }
}
