import 'package:atts_machinetask/view_model/footer/footer_screen.dart';
import 'package:atts_machinetask/view_model/home/features_widget.dart';
import 'package:atts_machinetask/view_model/home_view.dart/view.dart';
import 'package:flutter/material.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/customsizedbox.dart';
import '../choose/choosing_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FrontView(),
            CustomSizedBoxHeight(0.1),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "WHY AURUMM - AU PAY?",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            CustomSizedBoxHeight(0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlipCard(
                  heading: 'Comprehensive Inventory Management',
                  image: 'assets/images/star.png',
                  text:
                      'Efficiently track, manage, and optimize your jewellery inventory with advanced features tailored for the jewellery industry.',
                ),
                 CustomSizedBoxWidth(0.05),
                FlipCard(
                  heading: 'Customer-Centric Approach',
                  image: 'assets/images/customer.png',
                  text:
                      'Deliver exceptional customer experiences through personalized services and tailored recommendations, fostering long-term relationships.',
                ),
                CustomSizedBoxWidth(0.05),
                FlipCard(
                  heading: 'Real-Time Analytics',
                  image: 'assets/images/support.png',
                  text:
                      'Gain valuable insights into sales trends, customer preferences, and inventory performance, empowering data-driven decision-making for business growth.',
                ),
                CustomSizedBoxWidth(0.05),
                FlipCard(
                  heading: 'Seamless Integration',
                  image: 'assets/images/intergration.png',
                  text:
                      'Integrate seamlessly with existing systems and platforms, ensuring a smooth transition and maximizing operational efficiency.',
                ),
              ],
            ),
            CustomSizedBoxHeight(0.1),
            CustomSizedBoxHeight(0.1),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "FEATURES",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            CustomSizedBoxHeight(0.08),
            Features(),
           
            CustomSizedBoxHeight(0.1),
            Center(
              child: SizedBox(
                width: 250,
                child: Divider(color: Colors.grey,)),
            ),
              CustomSizedBoxHeight(0.06),
             Footer(),
             CustomSizedBoxHeight(0.06),
              Divider(color: Colors.grey,),
            CustomSizedBoxHeight(0.04),
             Center(
            child: Text(
              'Aurum made by ATTS Technologies. All Rights Reserved© 2024.',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
  CustomSizedBoxHeight(0.04),
          ],
        ),
      ),
    );
  }
}
