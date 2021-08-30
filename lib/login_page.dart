import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'home_ui.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 15),
                  color: Color(0xff67E5CE),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Welcome to ',
                              style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                fontSize: 40,
                                color: Color(0xFFF99928),
                                fontWeight: FontWeight.w300,
                              ))),
                          Text(
                            'Our App',
                            style: GoogleFonts.bebasNeue(
                                textStyle: TextStyle(
                              fontSize: 40,
                              color: Color(0xFFF99928),
                              fontWeight: FontWeight.w700,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(height: 2),
                      Text(
                        'SignUp To Continue',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        )),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            top: 200,
            child: Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 5),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffA3A3A3),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 2,
                              width: 55,
                              color: Color(0xFFF99928),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 30),
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(0xffA3A3A3),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xffA3A3A3)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(35))),
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'User Name atau Email',
                                  hintStyle: TextStyle(
                                      fontSize: 12, color: Color(0xffA3A3A3))),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Color(0xffA3A3A3),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(35)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA3A3A3)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'User Name atau Email',
                                hintStyle: TextStyle(
                                    fontSize: 12, color: Color(0xffA3A3A3))),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            top: 445,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.off(HomeUI());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF99928),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
