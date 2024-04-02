import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:health_app_2/open_test/tests_items.dart';



class OpenTestUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/test_back.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/pending_test.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                 const    Positioned(
                      bottom: 1,
                      left: 15,
                      child: Text(
                        'My Labortry name ',
                        style: TextStyle(
                          color: Colors.black,
                          
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: OpenTestItems(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
