import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scart/constant/color.dart';

import 'package:scart/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => Login()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo

    return Scaffold(
      backgroundColor: MyColor.green,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Text(
                "اسکارت",
                style: TextStyle(
                    color: MyColor.white, fontFamily: 'Kenar', fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SpinKitSpinningLines(
              color: Colors.white10,
              size: 300.0,
            )
          ],
        ),
      ),
    );
  }
}
