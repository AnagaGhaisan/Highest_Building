import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider package
import 'screens/home_screen.dart';  // Import HomeScreen
import 'screens/liked_places_screen.dart';  // Import LikedPlacesScreen
import 'screens/creator_screen.dart';  // Import CreatorScreen
import 'models/liked_places_model.dart'; // Import the LikedPlacesModel

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (_) => LikedPlacesModel(), // Provide LikedPlacesModel here
     child: MaterialApp(
       title: 'Highest Building',
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       home: BottomNavigation(),
       debugShowCheckedModeBanner: false,  // Disable the debug banner
     ),
   );
 }
}

class BottomNavigation extends StatefulWidget {
 @override
 _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
 int _selectedIndex = 0;

 static List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),  // Home Screen
   LikedPlacesScreen(),  // Liked Places Screen
   CreatorScreen(),  // Creator Screen
 ];

 void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: _widgetOptions.elementAt(_selectedIndex),
     bottomNavigationBar: BottomNavigationBar(
       items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.favorite),
           label: 'Liked',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: 'Creator',
         ),
       ],
       currentIndex: _selectedIndex,
       selectedItemColor: Colors.blue,
       onTap: _onItemTapped,
     ),
   );
 }
}
