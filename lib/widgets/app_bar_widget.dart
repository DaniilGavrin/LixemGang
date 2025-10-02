// lib/widgets/app_bar_widget.dart
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: Colors.grey[900], // Темно-серый фон
      child: Center( // 🔥 Главное — выравниваем всё по центру!
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min, // ⚡️ Ключевое: не растягиваем на весь экран
            children: [
              // Логотип слева
              Text(
                'Lixem Gang',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(width: 24), // Отступ между логотипом и меню

              // Меню: Sample Packs, Plugins, Events...
              ..._buildMenuItems(context),

              const SizedBox(width: 24), // Отступ перед корзиной

              // Корзина справа
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Cart clicked')),
                  );
                },
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Sample Packs',
      'Plugins',
      'Events',
      'Free Downloads',
      'Art of Music Production',
      'My Account',
    ];

    return menuTitles.map((title) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Clicked: $title')),
            );
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}