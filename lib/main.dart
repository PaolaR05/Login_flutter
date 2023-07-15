import 'package:flutter/material.dart';
import './src/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Vibes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          color:  Color.fromARGB(255, 234, 118, 255),
        )
        ),
      initialRoute: MyRoutes.login.name,
      routes: routes,
      
    );
  }
}