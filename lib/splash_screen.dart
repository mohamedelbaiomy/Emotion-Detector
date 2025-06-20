import 'package:flutter/material.dart';
import 'package:emotion_detector/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          spacing: 80,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              spacing: 15,
              children: [
                Text(
                  "Emotion Detector",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "powered by Mohamed Elbaiomy",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
