import 'package:atts_machinetask/constants/colors.dart';
import 'package:atts_machinetask/widgets/mediaquery.dart';
import 'package:flutter/material.dart';

class FeaturesScreen3 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon1;
  final String icons2;
  final String text1;
  final String text2;
  const FeaturesScreen3(
      {super.key,
      required this.icon1,
      required this.icons2,
      required this.subtitle,
      required this.text1,
      required this.text2,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       
        Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Container(
            width: mediaqueryheight(0.35, context),
            height: mediaqueryheight(0.35, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.blackColor,
                boxShadow: const [
                  BoxShadow(blurRadius: 10, color: Colors.grey)
                ]),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.network(
                    icon1,
                    height: mediaqueryheight(0.15, context),
                    width: mediaquerywidth(0.2, context),
                  ),
                ),
                Center(
                  child: Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 16, color: AppColors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ),
         Container(
          padding: const EdgeInsets.all(20),
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                subtitle,
                style:
                    const TextStyle(fontSize: 16, color: AppColors.whiteColor),
              ),
            ],
          ),
        ),
        Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Container(
            width: mediaqueryheight(0.35, context),
            height: mediaqueryheight(0.35, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.blackColor,
                boxShadow: const [
                  BoxShadow(blurRadius: 10, color: Colors.grey)
                ]),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.network(
                    icons2,
                    height: mediaqueryheight(0.15, context),
                    width: mediaquerywidth(0.2, context),
                  ),
                ),
                Center(
                  child: Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 16, color: AppColors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.blueGrey,
        ),
      ],
    );
  }
}
