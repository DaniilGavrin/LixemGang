// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_bar_widget.dart'; // Путь к твоей панели

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(), // Наша кастомная панель
      backgroundColor: Colors.black, // Чёрный фон
      body: Center(
        child: Text(
          'В данный момент сайт отключен! Он будет доступен 31.12.2025 по новому адресу lixemgang.com.\n\nС уважением команда Lixem Gang',
          style: TextStyle(
            color: Colors.white, // Белый текст
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}