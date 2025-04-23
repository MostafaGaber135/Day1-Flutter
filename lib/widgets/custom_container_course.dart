import 'package:flutter/material.dart';

class CustomContainerCourse extends StatelessWidget {
  const CustomContainerCourse({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageURL,
    required this.color,
  });
  final String title, subTitle, imageURL;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330,
        height: 184,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse 252.png',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              'assets/images/Ellipse 253.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    subTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Image.asset(imageURL, height: 179, fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
