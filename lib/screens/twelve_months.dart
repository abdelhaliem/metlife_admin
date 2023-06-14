//Twelve months

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metlife_admin/style/app_colors.dart';
import '../services/local_notification_service.dart';
import '../services/navigation.dart';
import '../thank_you_screen.dart';
import 'my_bottom.dart';

class TwelveMonths extends StatelessWidget {
  const TwelveMonths({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:   AppBar(
        elevation: 0,
        // toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: InkWell(
              onTap: () => LocalNotificationService.display(months: 6),
              child: Image.asset("assets/images/Bezzie_logo.png",
                  height: 30)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text.rich(
                TextSpan(
                  text: "Hey ",
                  style: TextStyle(color: Colors.grey.shade600),
                  children: const [
                    TextSpan(
                      text: "Ayesha!",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "It's your anniversary!.",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "We value your friendship over the last year! Let's continue this journey and renew your bezzie? "
                    "\n"
                    "\n"
                    "We will keep coming back with solutions just for you. Thank you for choosing us as your friend for life.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              const SizedBox(
                height: 10,
              ),
              const MyBottom(text: "I'm staying with Bezzie",),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Remember that your data is safe with us.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Bezzie Data Privacy Policy",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size(double.infinity, 60)),
                onPressed: () => navigateTo(context, const ThankYouScreen()),
                child: const Text(
                  "Take Survey",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
