import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class MainScreen extends StatelessWidget {
  Color primaryColor = Color(0xFF6C5EA8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/App_Title.png',
              width: 161, // Set the width as needed
              height: 37, // Set the height as needed
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Add your button's onPressed logic here
              },
              child: const Text('Tutorial'),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Attendance Records',
              style: TextStyle(
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 260,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search User',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 212, 135, 135),
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 236, 234),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
