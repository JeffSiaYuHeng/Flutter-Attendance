import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import '../widgets/AttendanceListWidget.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 13.0),
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
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 230,
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
                Container(
                  width: 40, // Set the width as needed
                  height: 40, // Set the height as needed
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      foregroundColor:
                          Colors.white, // Background color of the button
                      backgroundColor: Color.fromARGB(255, 241, 107, 88),
                    ),
                    onPressed: () {
                      // Add your button's onPressed logic here
                      print('Elevated Button Pressed');
                    },
                    child: HeroIcon(
                      HeroIcons.plus, style: HeroIconStyle.outline,
                      size: 30, // Set the size as needed
                    ),
                  ),
                ),
                Container(
                  width: 40, // Set the width as needed
                  height: 40, // Set the height as needed
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      foregroundColor:
                          Colors.white, // Background color of the button
                      backgroundColor: Color.fromARGB(255, 98, 204, 218),
                    ),
                    onPressed: () {
                      // Add your button's onPressed logic here
                      print('Elevated Button Pressed');
                    },
                    child: HeroIcon(
                      HeroIcons.clock, style: HeroIconStyle.outline,
                      size: 30, // Set the size as needed
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            AttendanceListWidget(),
          ],
        ),
      ),
    );
  }
}
