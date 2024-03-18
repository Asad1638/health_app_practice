import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_app_2/widgets/screen-home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30,sigmaY: 30,tileMode: TileMode.mirror),
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/image1.jpeg"),
                    fit: BoxFit.fill)),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                height: height * 0.55,
                width: height * 0.55,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.8),border: Border.all(color: Colors.white,width: 1.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.024,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: height * 0.03,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    // Email text field
                    TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                          labelText: " Enter Email ",
                         labelStyle: TextStyle(
                              fontSize: 12, color: Colors.white.withOpacity(0.5)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3), width: 1.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3), width: 1.0),
                          )),
                    ),
          
                    //password text field
          
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextFormField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                          labelText: " Enter Password ",
                          labelStyle: TextStyle(
                              fontSize: 12, color: Colors.white.withOpacity(0.5)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3), width: 1.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3), width: 1.0),
                          )),
                    ),
          
                    SizedBox(
                      height: height * 0.02,
                    ),
          
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
          
                    //button
                    SizedBox(
                      height: height * 0.04,
                    ),
                    ElevatedButton(
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const  HomeScreen(),));
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black.withOpacity(0.1),
                       ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white60
                              ,
                              fontSize: 16),
                        ),
                      ),
                    ),
          
                    SizedBox(
                      height: height * 0.016,
                    ),
                   const    Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text("Don\'t have an account",style: TextStyle(fontSize: 15,color: Colors.black),)
                ],
              ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
