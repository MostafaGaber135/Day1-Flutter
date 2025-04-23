import 'package:flutter/material.dart';
import 'package:task/widgets/custom_container.dart';
import 'package:task/widgets/custom_progress_container.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Hello, Mo',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.notifications, size: 24, color: Colors.black),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 18),
                  height: 132,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color(0XFF0DA6C2),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '2/10 Tasks',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        Image.asset(
                          'assets/images/Group.png',
                          height: 128,
                          width: 106.84,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'To Do',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Color(0XFFD9D9D9),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Color(0XFFFF0809),
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomContainer(),
                      SizedBox(width: 10),
                      CustomContainer(),
                      SizedBox(width: 10),

                      CustomContainer(),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'In progress',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundColor: Color(0XFFD9D9D9),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Color(0XFFFF0809),
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      CustomProgressContainer(percentage: '70%'),
                      SizedBox(height: 10),
                      CustomProgressContainer(percentage: '45%'),
                      SizedBox(height: 10),
                      CustomProgressContainer(percentage: '30%'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
