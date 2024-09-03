import 'package:flutter/material.dart';

class CreatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Creator',
          style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth >= 600;  // Define a breakpoint for wide screens

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Photo with adjusted size for larger screens
                CircleAvatar(
                  radius: isWideScreen ? 150 : 100,  // Adjust the radius based on screen width
                  backgroundImage: AssetImage('assets/images/Frame 1.png'),
                ),
                SizedBox(height: isWideScreen ? 24 : 16),  // Adjust spacing for larger screens
                // Name with adjusted font size for larger screens
                Text(
                  'Anaga Ghaisan Abhista',
                  style: TextStyle(
                    fontSize: isWideScreen ? 32 : 24,  // Adjust font size based on screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
