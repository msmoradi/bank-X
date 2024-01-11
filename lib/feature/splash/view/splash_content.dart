import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Center(
        child: Image.asset(
          "assets/images/splash_screen_logo.png",
          fit: BoxFit.fitWidth,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
