import 'dart:js';

import 'package:app1/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState create() => _SplashScreenState ();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  }

class _SplashScreenState extends SplashScreen {



  }
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
            FlutterLogo(size: 400),
          ],
      ),
    );
  }
}