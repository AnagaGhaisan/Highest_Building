import 'package:flutter/material.dart';
import '../models/data.dart';  // Import the data file to access the buildingList
import '../screens/detail_screen.dart';  // Import DetailScreen

class HomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       title: Text(
         'Tallest Buildings',
         style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
       ),
       actions: [
         IconButton(
           icon: Icon(Icons.notifications, color: Colors.black),
           onPressed: () {},
         ),
       ],
     ),
     body: LayoutBuilder(
       builder: (context, constraints) {
         final isTabletOrWeb = constraints.maxWidth > 600;
         return GridView.builder(
           padding: EdgeInsets.all(16.0),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: isTabletOrWeb ? 2 : 1,
             childAspectRatio: 1.5,
             crossAxisSpacing: 16,
             mainAxisSpacing: 16,
           ),
           itemCount: buildingList.length,
           itemBuilder: (context, index) {
             final building = buildingList[index];
             return Card(
               child: InkWell(
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => DetailScreen(building: building),
                     ),
                   );
                 },
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Expanded(
                       child: Image.asset(
                         building.imageAsset,
                         width: double.infinity,
                         fit: BoxFit.cover,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             building.name,
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           SizedBox(height: 8),
                           Text(
                             building.location,
                             style: TextStyle(fontSize: 16, color: Colors.grey),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             );
           },
         );
       },
     ),
   );
 }
}
