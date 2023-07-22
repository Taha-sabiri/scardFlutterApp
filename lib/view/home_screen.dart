import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
                child: Stack(
              children: [
                Image.asset('assets/images/card.png'),
                Positioned(
                    top: 100,
                    left: 90,
                    child: Text(
                      "2020 1543 3264 8645",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                Positioned(
                    top: 170,
                    left: 90,
                    child: Text(
                      "طاها صبیری",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "kalame",
                          fontWeight: FontWeight.w700),
                    )),
                Positioned(
                    top: 190,
                    left: 90,
                    child: Text(
                      "TA241O",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "kalame",
                          fontWeight: FontWeight.w400),
                    )),
              ],
            )),
            back: Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/cardback.png',
                  ),
                  Positioned(
                    left: 70,
                    top: 70,
                    child: SizedBox(
                        height: 130,
                        width: 130,
                        child: Image.asset('assets/images/qrcode.png')),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
