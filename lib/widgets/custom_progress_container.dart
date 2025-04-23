import 'package:flutter/material.dart';

class CustomProgressContainer extends StatelessWidget {
  const CustomProgressContainer({super.key, required this.percentage});
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      width: 330,
      height: 103,
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 222),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 34,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tommy max’s Project',
                style: TextStyle(
                  color: const Color(0xFF818181),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Create Ad Banner',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                '2 hours ago',
                style: TextStyle(
                  color: const Color(0xFF818181),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFFD9D9D9),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Text(
                percentage,
                style: TextStyle(
                  color: const Color(0xFF4C91FF),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
