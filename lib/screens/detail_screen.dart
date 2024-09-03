import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/liked_places_model.dart';  // Import the liked places model
import '../models/data.dart';  // Import the data file

class DetailScreen extends StatefulWidget {
  final BuildingName building;

  DetailScreen({required this.building});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentPage = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth >= 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Consumer<LikedPlacesModel>(
            builder: (context, likedPlaces, child) {
              bool isLiked = likedPlaces.likedPlaces.contains(widget.building);
              return IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  if (isLiked) {
                    likedPlaces.removePlace(widget.building);
                  } else {
                    likedPlaces.addPlace(widget.building);
                  }
                },
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {
              // Handle share action
            },
          ),
        ],
      ),
      body: isDesktop ? Row(
        children: [
          // Carousel on the left side
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: widget.building.imageUrls.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          widget.building.imageUrls[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    },
                  ),
                  if (screenWidth >= 800) // Show navigation buttons on desktop or large screens
                    Positioned(
                      left: 8,
                      top: 0,
                      bottom: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_left, color: Colors.white, size: 40),
                        onPressed: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  if (screenWidth >= 800) // Show navigation buttons on desktop or large screens
                    Positioned(
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right, color: Colors.white, size: 40),
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(widget.building.imageUrls.length, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          width: _currentPage == index ? 12.0 : 8.0,
                          height: _currentPage == index ? 12.0 : 8.0,
                          decoration: BoxDecoration(
                            color: _currentPage == index ? Colors.white : Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Content on the right side
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  // Building Name and Location
                  Text(
                    widget.building.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.building.location,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  // Building Details (e.g., Open Days, Open Time, Ticket Price)
                  Column(
                    children: [
                      DetailInfoTile(
                        title: "Open Days",
                        value: widget.building.openDays,
                      ),
                      DetailInfoTile(
                        title: "Open Time",
                        value: widget.building.openTime,
                      ),
                      DetailInfoTile(
                        title: "Ticket Price",
                        value: widget.building.ticketPrice,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Description
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.building.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ) : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carousel of Building Images
            Container(
              height: 250,
              width: double.infinity,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: widget.building.imageUrls.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          widget.building.imageUrls[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    },
                  ),
                  if (screenWidth >= 800) // Show navigation buttons on desktop or large screens
                    Positioned(
                      left: 8,
                      top: 0,
                      bottom: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_left, color: Colors.white, size: 40),
                        onPressed: () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  if (screenWidth >= 800) // Show navigation buttons on desktop or large screens
                    Positioned(
                      right: 8,
                      top: 0,
                      bottom: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right, color: Colors.white, size: 40),
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  Positioned(
                    bottom: 8,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(widget.building.imageUrls.length, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.0),
                          width: _currentPage == index ? 12.0 : 8.0,
                          height: _currentPage == index ? 12.0 : 8.0,
                          decoration: BoxDecoration(
                            color: _currentPage == index ? Colors.white : Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Building Name and Location
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.building.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.building.location,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            // Building Details (e.g., Open Days, Open Time, Ticket Price)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  DetailInfoTile(
                    title: "Open Days",
                    value: widget.building.openDays,
                  ),
                  DetailInfoTile(
                    title: "Open Time",
                    value: widget.building.openTime,
                  ),
                  DetailInfoTile(
                    title: "Ticket Price",
                    value: widget.building.ticketPrice,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.building.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailInfoTile extends StatelessWidget {
  final String title;
  final String value;

  DetailInfoTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
