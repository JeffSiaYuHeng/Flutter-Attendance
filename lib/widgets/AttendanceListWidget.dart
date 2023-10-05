import 'package:flutter/material.dart';

class AttendanceListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            // Your content for the attendance list goes here
            Container(
              height: 300, // Example content that exceeds screen height
              color: Colors.blue,
            ),
            Container(
              height: 300,
              color: Colors.green,
            ),
            Container(
              height: 300,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
