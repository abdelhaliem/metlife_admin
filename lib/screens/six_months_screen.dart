import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metlife_admin/style/app_colors.dart';
import '../services/local_notification_service.dart';
import '../services/navigation.dart';
import '../thank_you_screen.dart';
import 'my_bottom.dart';

class SixMonths extends StatelessWidget {
  const SixMonths({super.key});

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
                "It's your 6 months anniversary.",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "We have something just for you at no extra cost. What would you choose? ",
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
              const MyBottom(text: "Online doctor consultation 24x7",),
              const MyBottom(text: "2 mental health consultations",),
              const MyBottom(text: "2 finacial wellness consultations",),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We are thrilled to have friends like you. Stay tuned, there is more to come",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
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
