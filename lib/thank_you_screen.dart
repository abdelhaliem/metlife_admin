import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Bezzie_logo.png", height: 30),
              const Spacer(),
              Image.asset("assets/images/thank you.png", height: 300),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Thank You",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(95, 37, 159, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
