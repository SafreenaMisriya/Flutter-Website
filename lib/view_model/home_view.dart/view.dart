import 'package:atts_machinetask/widgets/customsizedbox.dart';
import 'package:atts_machinetask/widgets/mediaquery.dart';
import 'package:flutter/material.dart';
import 'package:rich_typewriter/rich_typewriter.dart';
import 'package:animate_do/animate_do.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';

class FrontView extends StatelessWidget {
  const FrontView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const CustomSizedBoxHeight(0.1),
              const Text(
                "AU SALES",
                style: TextStyle(
                  fontSize: AppSizes.fontMedium,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                width: mediaquerywidth(0.05, context),
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2, // Adjust thickness if needed
                ),
              ),
              const CustomSizedBoxHeight(0.02),
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: RichTypewriter(
                    delay: 120,
                    child: Text.rich(TextSpan(
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                      text: "Inventory Management Excellence\nIn Every Tap",
                    ))),
              ),
              const CustomSizedBoxHeight(0.04),
              const Text(
                '''At AURUMM, we understand the artistry and precision that goes into every piece of\njewellery. AU Sales is a testament to that understanding, offeringan unparalleled\nsolution for managing your jewellery store inventory.With a focus on simplicity and\nsophistication, AU Sales streamlines your operations and makes tracking your inventory\nthe easiest it has ever been: allowing you to focus on what truly matters your craft.''',
                style: TextStyle(
                  fontSize: AppSizes.fontMedium,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          BounceInDown(
            delay: const Duration(seconds: 2),
            child: Image.asset(
              'assets/images/reponsive.png',
              fit: BoxFit.cover,
              height: mediaqueryheight(0.5, context),
              width: mediaquerywidth(0.45, context),
            ),
          ),
        ],
      ),
    );
  }
}
