import 'package:flutter/material.dart';
import 'package:parking_keeper/home_page.dart';
import 'dart:async';

import 'package:shimmer/shimmer.dart';

class SplashPageStateless extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPageStateful(),
    );
  }
} // Stateless chứa các thằng không thay đổi, bản thân Stateful không thay đổi nhưng có thể chứa các thằng thay đổi

class SplashPageStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPageStateful> {
  @override
  void initState() {
    // TODO: implement initState
    _mockCheckForSesssion().then((status) {
      if (status) {
        _navigationHome();
      }
    });
  }

  Future<bool> _mockCheckForSesssion() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  void _navigationHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 80),
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/logo_temp.jpg'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  child: Align(
                    alignment: Alignment.center,
                    child: Shimmer.fromColors(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Parking Around',
                            style: TextStyle(
                                fontSize: 55,
                                fontFamily: 'Lobster-Regular',
                                shadows: <Shadow>[
                                  Shadow(
                                      color: Colors.black87,
                                      blurRadius: 10.0,
                                      offset: Offset.fromDirection(120, 5))
                                ]),
                          ),
                        ),
                        baseColor: Colors.blueAccent,
                        highlightColor: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
