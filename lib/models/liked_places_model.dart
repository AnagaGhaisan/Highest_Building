import 'package:flutter/material.dart';
import 'data.dart';  // Import the data file to access the BuildingName class

class LikedPlacesModel extends ChangeNotifier {
 final List<BuildingName> _likedPlaces = [];

 List<BuildingName> get likedPlaces => _likedPlaces;

 void addPlace(BuildingName building) {
   _likedPlaces.add(building);
   notifyListeners();
 }

 void removePlace(BuildingName building) {
   _likedPlaces.remove(building);
   notifyListeners();
 }
}
