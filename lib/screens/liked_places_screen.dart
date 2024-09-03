import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/detail_screen.dart';  // Import DetailScreen
import '../models/liked_places_model.dart';  // Import the liked places model

class LikedPlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liked Places'),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      body: Consumer<LikedPlacesModel>(
        builder: (context, likedPlaces, child) {
          if (likedPlaces.likedPlaces.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'No liked places yet!',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: likedPlaces.likedPlaces.length,
            itemBuilder: (context, index) {
              final building = likedPlaces.likedPlaces[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),  // Adjust the radius as needed
                    child: Image.asset(
                      building.imageAsset,  // Use building's image URL
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(building.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Text(building.location, style: TextStyle(fontSize: 16, color: Colors.grey)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(building: building),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
