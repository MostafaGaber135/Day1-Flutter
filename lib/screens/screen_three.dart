import 'package:flutter/material.dart';
import 'package:task/widgets/custom_create_task.dart';
import 'package:task/widgets/custom_tab_bar.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, size: 32),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 32)),
        ],
        centerTitle: true,
        title: Text(
          'Tayo’s Projects',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: const [
                    SizedBox(width: 8),
                    CustomTabBar(
                      title: 'All',
                      number: '17',
                      color: Color(0XFF0DA6C2),
                    ),
                    CustomTabBar(
                      title: 'To Do',
                      number: '5',
                      color: Color(0XFF7B78AA),
                    ),
                    CustomTabBar(
                      title: 'In Progress',
                      number: '3',
                      color: Color(0XFFFFC239),
                    ),
                    CustomTabBar(
                      title: 'Bonus point',
                      number: '13',
                      color: Color(0XFFD9D9D9),
                    ),
                    SizedBox(width: 8), // margin right
                  ],
                ),
              ),
            ),

            Center(
              child: Column(
                children: [
                  CustomCreateTask(
                    title: 'Create Ad Banner',
                    subTitle: '2 hours ago',
                  ),
                  CustomCreateTask(
                    title: 'Create New Blog Post',
                    subTitle: '2 hours ago',
                  ),
                  CustomCreateTask(
                    title: 'Online Course',
                    subTitle: '2 hours ago',
                  ),
                  CustomCreateTask(
                    title: 'Complete Portfolio',
                    subTitle: '2 hours ago',
                  ),
                  CustomCreateTask(
                    title: 'Plan For Next Week',
                    subTitle: '2 hours ago',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
