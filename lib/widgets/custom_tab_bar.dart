import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.title,
    required this.number,
    required this.color,
  });
  final String title, number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              number,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
