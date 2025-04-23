import 'package:flutter/material.dart';

class CustomCreateTask extends StatelessWidget {
  const CustomCreateTask({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        width: 330,
        height: 130,
        decoration: ShapeDecoration(
          color: Color(0x38B4B4B4).withValues(alpha: 0.22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 34,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: ShapeDecoration(
                  color: const Color(0xFF9327F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(width: 10),
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse 252.png',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse 253.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
