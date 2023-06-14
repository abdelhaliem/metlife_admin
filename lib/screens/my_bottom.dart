import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class MyBottom extends StatelessWidget {
  const MyBottom({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: Size(size.width / 2 - 20, 50),
            maximumSize: Size(size.width / 2 - 20, 50),
          ),
          onPressed: () {},
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.3,
            ),
          ),
        ),
      ),
    );
  }
}
