import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      height: 140,
      decoration: ShapeDecoration(
        color: const Color(0xFFEFEFEF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Project',
            style: TextStyle(
              color: const Color(0xFF818181),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Redesign\nHomescreen',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 1.34,
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              Text(
                '25th october 2029',
                style: TextStyle(
                  color: const Color(0xFF818181),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
