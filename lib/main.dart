import 'package:dlivry/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'routes/route_path.dart';
import 'routes/routes.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DLIVRY',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Roboto',
      ),
      // home: const SplashScreen(),
      initialRoute: RoutePath.splash,
      routes: myRoutes(context),
    );
  }
}
