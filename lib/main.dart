import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('В данный момент сайт отключен! Он будет доступен 31.12.2025 по новому адресу lixemgang.com.\n\nС уважением команда Lixem Gang'),
        ),
      ),
    );
  }
}
