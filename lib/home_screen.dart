import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metlife_admin/services/local_notification_service.dart';
import 'package:metlife_admin/services/navigation.dart';
import 'package:metlife_admin/style/app_colors.dart';
import 'package:metlife_admin/thank_you_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*
  'Hey ( customer name), this is (brand name) checking in. It has been 3
   months since we partnered up. Let us know how you are getting on with
   life by doing any 2 of the following (remember your data is safe with
    us and the more information you provide, the more it helps us personalise
     our services for you and protect you for life):
- Upload data from your wearable device  (link)
- Upload a copy of annual health screening or medical tests or lab work in the last 12 months (link)
- Upload a certificate of participating in a sports event (link)
- complete a health questionnaire on our 360 health app  (link)
- Refer a friend to us if you are loving our partnership (link)

We will be in touch soon to offer some additional free services!

Tell us how we are doing so far by taking a short survey (link)
   */
  Color mainColor = const Color.fromRGBO(95, 37, 159, 1);
  Color colorTow = const Color.fromRGBO(255, 198, 0, 1);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                InkWell(
                    onTap: () => LocalNotificationService.display(),
                    child: Image.asset("assets/images/Bezzie_logo.png",
                        height: 30)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 40.0,
                    left: 40,
                    top: 10,
                    bottom: 20,
                  ),
                  child: Image.asset("assets/images/hi.png", height: 200),
                ),
                Text.rich(
                  TextSpan(
                    text: "Hey ",
                    style: TextStyle(color: Colors.grey.shade600),
                    children: [
                      TextSpan(
                        text: "Ayesha!",
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: " \n"
                                "It has been three months since you’ve joined bezZie family. Time flies, indeed! "
                                " Let us know how you are getting on with life. If you are ok, you can upload any two documents from the list so we can personalize our services in the future."
                                " Remember that your data is safe with us. Data Privacy Policy:",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                            ),
                            children: [],
                          ),
                          const TextSpan(
                            text: "\n"
                                "- Your wearable device data (link)"
                                "\n"
                                "- Annual health screening or any lab work in the last one year",
                                // "\n"
                                // "- Certificate of participation in any sports event"
                                // "\n"
                                // "- Health questionnaire on your 360 health app"
                                // "\n"
                                // "- Refer a friend to us if you are loving our partnership"
                                // "\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              height: 2,
                            ),
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const MyTextRow(
                  title: "- Certificate of participation in any sports event",
                  bottom: "Upload",
                ),
                const MyTextRow(
                  title: "- Health questionnaire on your 360 health app",
                  bottom: "Go",
                ),
                const MyTextRow(
                  title: "- Refer a friend to us if you are loving our partnership",
                  bottom: "Invite",
                ),
                const Text(
                  "We will be in touch soon to offer some additional free services! So stay tuned.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    height: 2,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Tell us how we are doing so far by taking a quick survey",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           backgroundColor: colorTow,
                //           elevation: 0,
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20)),
                //           minimumSize: Size(size.width / 2 - 20, 50)),
                //       onPressed: () {},
                //       child: const Text("Connect From Device"),
                //     ),
                //     ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           backgroundColor: colorTow,
                //           elevation: 0,
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20)),
                //           minimumSize: Size(size.width / 2 - 20, 50)),
                //       onPressed: () {},
                //       child: const Text("Upload Photo"),
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(size.width, 60)),
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
      ),
    );
  }
}

class MyTextRow extends StatelessWidget {
  const MyTextRow({super.key, required this.title, required this.bottom});

  final String title;
  final String bottom;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 9,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 2,
          child: InkWell(
            onTap: (){},
            splashColor: AppColors.colorTow.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
            child: Center(
              child: Text(
                bottom,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
