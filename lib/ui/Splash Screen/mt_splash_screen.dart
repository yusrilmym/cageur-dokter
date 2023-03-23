import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cageur_dokter/ui/Onboarding/mt_onboarding.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => const OnBoardingScreen().launch(context, isNewTask: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Image(
            image: AssetImage('assets/images/splash.png'),
            // fit: BoxFit.fill,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "By System Developer IT",
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
              ),
              Text(
                "Versi 1.0.0",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
