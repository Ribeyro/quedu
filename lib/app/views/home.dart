import 'package:flutter/material.dart';
import '../views/widgets/course_list.dart';
import '../views/widgets/custom_app_bar.dart';
import '../views/widgets/quedu_list.dart';
import '../views/widgets/upload_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            UploadButton(),
            SizedBox(height: 20),
            QueduList(),
            Divider(),
            CourseList(),
          ],
        ),
      ),
    );
  }
}