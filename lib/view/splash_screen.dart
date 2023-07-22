import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scart/view/home_screen.dart';
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
      backgroundColor: Color.fromRGBO(187, 255, 0, 1),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Text(
                "اسکارت",
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontFamily: 'Kenar',
                    fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SpinKitSpinningLines(
              color: Color.fromARGB(22, 0, 0, 0),
              size: 300.0,
            )
          ],
        ),
      ),
    );
  }
}
