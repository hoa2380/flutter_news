import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/facebook_login/facebook_login.dart';
import 'package:flutter_news/routes.dart';
import 'package:flutter_news/pages/home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ]),
      // initialRoute: Routes.home,
      // onGenerateRoute: (RouteSettings settings) {
      //   return Routes.fadeThrough(settings, (context) {
      //     switch (settings.name) {
      //       case Routes.home:
      //         return Home();
      //         break;
      //       default:
      //         return null;
      //         break;
      //     }
      //   });
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
