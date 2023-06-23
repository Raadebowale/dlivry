import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/providers/db_provider.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

import 'routes/route_path.dart';
import 'routes/routes.dart';
// import 'screens/splash_screen.dart';

void main() async {
  await initilizeDependencies();

  runApp(const MyApp());
}

initilizeDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DLIVRY',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Roboto',
        ),
        // home: const SplashScreen(),
        initialRoute: RoutePath.splash,
        routes: myRoutes(context),
      ),
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => DbProvider()),
      ],
    );
  }
}
