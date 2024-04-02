import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:health_app_2/close_test.dart/close_test_ui.dart';
import 'package:health_app_2/data_stats/data_stat_ui.dart';
import 'package:health_app_2/open_test/open_test.dart';
import 'package:health_app_2/widgets/grid_items.dart';
import '../add_labortary/adding_labortary.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        titleSpacing: 20,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image covering the entire screen
            Container(
              height: MediaQuery.of(context).size.height *1.3, // Increase height here
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/login.jpeg",
                fit: BoxFit.fill,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                //color: Colors.black.withOpacity(0.1),
                height: MediaQuery.of(context).size.height * 1.3, // Adjust the height accordingly
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  // Container with the upper image
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/home_screen.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  SizedBox(height: 30), // Adding some space

                  // Grid view containing the grid items
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2, // Two grid items in a row
                    // childAspectRatio: 1.5, // Aspect ratio for grid items
                    // mainAxisSpacing: 20,
                    // crossAxisSpacing: 20,
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    children: [
                      // Add your grid view items here
                      GridItem(
                        imageAsset: "assets/images/add_labortries.jpeg",
                        itemName: "Add Labortries",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LaboratoryWidget(),
                            ),
                          );
                        },
                      ),
                      GridItem(
                        imageAsset: "assets/images/add_labortries.jpeg",
                        itemName: "TEST IN PROGRESS",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OpenTestUi(),
                            ),
                          );
                        },
                      ),
                      GridItem(
                        imageAsset: "assets/images/add_labortries.jpeg",
                        itemName: "COMPLETED TEST",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CloseTestUi(),
                            ),
                          );
                        },
                      ),
                      GridItem(
                        imageAsset: "assets/images/add_labortries.jpeg",
                        itemName: "DATA STATS",
                        onTap: () {
                          //  Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => DataStatsWidget(),
                          //   ),
                        //  );
                        },
                      ),
                      GridItem(
                        imageAsset: "assets/images/add_labortries.jpeg",
                        itemName: "DATA STATS",
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
