import 'package:flutter/material.dart';

import 'package:health_app_2/widgets/grid_items.dart';

import '../add_labortries.dart/adding_labortary.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("H o m e"),titleSpacing: 20,backgroundColor: Colors.black26,),
      body: SingleChildScrollView(
        //set background color
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // Colors.black26,
                Colors.blueAccent,

                Color.fromARGB(255, 105, 240, 125),
              ],
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Use media query to determine the height of the image
              double imageHeight = MediaQuery.of(context).size.height * 0.3;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50), // Add padding here
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/home_screen.jpeg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: imageHeight,
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //works like the list view but i have stop it using  the   physics: NeverScrollableScrollPhysics(),
                  GridView.count(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // Disable GridView scrolling
                    crossAxisCount: constraints.maxWidth ~/ 150,
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
                                ));
                          }),
                      GridItem(
                          imageAsset: "assets/images/add_labortries.jpeg",
                          itemName: "TEST IN PROGRESS",
                          onTap: () {}),
                      GridItem(
                          imageAsset: "assets/images/add_labortries.jpeg",
                          itemName: "COMPLETED TEST",
                          onTap: () {}),
                      GridItem(
                          imageAsset: "assets/images/add_labortries.jpeg",
                          itemName: "DATA STATS",
                          onTap: () {}),
                      GridItem(
                          imageAsset: "assets/images/add_labortries.jpeg",
                          itemName: "DATA STATS",
                          onTap: () {}),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
