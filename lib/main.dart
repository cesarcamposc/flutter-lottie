import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/FlutterLogo.json',
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Text('Flutter', style: Theme.of(context).textTheme.displayLarge),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/android.png',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(width: 5), // Add space between images
                  Image.asset(
                    'assets/images/apple.png',
                    width: 200,
                    height: 220,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
