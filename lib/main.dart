import 'package:flutter/material.dart';
import 'package:flutter_challenge/pages/home/home_page.dart';
import 'package:flutter_challenge/pages/splash/splash_page.dart';
import 'package:flutter_challenge/providers/search_provider.dart';
import 'package:flutter_challenge/utils/size_config.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());

}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              SearchProvider().init();
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Challenge',
                themeMode: ThemeMode.light,
                theme: ThemeData(
                  primaryColor: Colors.blueAccent,
                  fontFamily: 'Mont',
                  backgroundColor: Colors.white,
                ),
                home: SplashPage(),

              );
            },
          );
        },
      ),
    );
  }
}

