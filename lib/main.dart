import 'package:flutter/material.dart';
import 'router.dart';
import 'package:beamer/beamer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      debugShowCheckedModeBanner: false,
      title: 'Lixem Gang',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.grey),
      ),
    );
  }
}
