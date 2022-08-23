import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // screen width and height
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Image(
          width: screenWidth * 0.33,
          image: const AssetImage('assets/Instagram_Glyph_Gradient.png'),
        ),
      ),
    );
  }
}
