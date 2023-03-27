import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String svgPathData = 'M10 10 L90 10 L50 90 Z';
const String svg = '<svg viewBox="0 0 100 100"><path d="$svgPathData"/></svg>';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: 200,
        height: 200,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/paper.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: SvgPicture.string(
                svg,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.srcOut,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
