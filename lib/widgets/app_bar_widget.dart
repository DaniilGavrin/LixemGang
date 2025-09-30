import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[800], // Серый цвет (можно подстроить)
      title: const Text(
        'Lixem Gang',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false, // Чтобы текст был слева
      automaticallyImplyLeading: false, // Убираем "назад" кнопку
      actions: const [], // Пусто справа (но место зарезервировано)
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}