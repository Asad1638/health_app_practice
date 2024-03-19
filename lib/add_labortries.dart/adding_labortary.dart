import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

class LaboratoryWidget extends StatefulWidget {
  @override
  _LaboratoryWidgetState createState() => _LaboratoryWidgetState();
}

class _LaboratoryWidgetState extends State<LaboratoryWidget> {
  String laboratoryName = '';
  String laboratoryAddress = '';
  String id = '';
  String password = '';

  void generateIdAndPassword() {
    // Generate random ID
    final Random random = Random();
    final int randomNumber = random.nextInt(10000);
    final String idPrefix = 'LAB';
    id = '$idPrefix$randomNumber';

    // Generate random password
    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    password = List.generate(8, (index) => chars[random.nextInt(chars.length)]).join();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Laboratory Registration'),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_lab.jpeg'), // Update image path as needed
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust blur intensity as needed
              child: Container(
                color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const  Text(
                  'Laboratory Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextFormField(
                  onChanged: (value) {
                    laboratoryName = value;
                  },
                  decoration:const InputDecoration(
                    hintText: 'Enter Laboratory Name',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
               const  SizedBox(height: 20),
                const Text(
                  'Laboratory Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                TextFormField(
                  onChanged: (value) {
                    laboratoryAddress = value;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Laboratory Address',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
               const  SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    generateIdAndPassword();
                  },
                  child:const Text('Generate ID and Password',),
                ),
              const   SizedBox(height: 20),
                Text(
                  'ID: $id',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  'Password: $password',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


