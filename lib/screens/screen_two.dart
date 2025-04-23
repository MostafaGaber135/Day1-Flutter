import 'package:flutter/material.dart';
import 'package:task/widgets/custom_container_course.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomContainerCourse(
            title: 'VR Course',
            subTitle: '13/13 Tasks - 100%',
            imageURL: 'assets/images/Virtual reality.png',
            color: Color(0XFF61DE70),
          ),
          SizedBox(height: 16),
          CustomContainerCourse(
            title: 'Community',
            subTitle: '2/8 Tasks - 35%',
            imageURL: 'assets/images/Community.png',
            color: Color(0XFF19173D),
          ),
          SizedBox(height: 16),

          CustomContainerCourse(
            title: 'SMM Course',
            subTitle: '4/7 Tasks - 57%',
            imageURL: 'assets/images/Refer a friend.png',
            color: Color(0XFF9327F0),
          ),
        ],
      ),
    );
  }
}
