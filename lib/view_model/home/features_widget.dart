
import 'package:atts_machinetask/view_model/features/order.dart';
import 'package:atts_machinetask/view_model/features/real-time.dart';
import 'package:flutter/material.dart';

import '../features/estimation.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
             children: [
               FeaturesScreen(
                 title: 'Real-Time Integration of HO & Branches',
                 subtitle:
                     'Seamlessly sync operations between headquarters and branches for efficient management.',
                 text1: 'Seamless Communication',
                 text2: 'Centralized Control',
                 icon1:
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTWvB-LW1UsalY6z_lcZqIbJwHKp5u9Badw&s',
                 icons2:
                     'https://www.shutterstock.com/shutterstock/videos/3646175737/thumb/11.jpg?ip=x480',
               ),
               FeaturesScreen3(
                 title: 'Estimation & Billing',
                 subtitle:
                     'Streamline the process of estimating costs and generating bills for smooth transactions.',
                 text1: 'Customizable Templates',
                 text2: 'Automated Processes',
                 icon1:
                     'https://static.vecteezy.com/system/resources/previews/025/851/742/non_2x/minimalistic-logo-template-white-icon-of-mountain-silhouette-on-black-background-modern-logotype-concept-for-business-identity-t-shirts-print-tattoo-illustration-vector.jpg',
                 icons2:
                     'https://png.pngtree.com/png-vector/20190330/ourlarge/pngtree-vector-invoice-vector-icon-png-image_894792.jpg',
               ),
               FeaturesScreen2(
                 title: 'Stock & RFID Inventory Management',
                 subtitle:
                     'Utilize RFID technology for precise inventory tracking and efficient stock management.',
                 text1: 'Precision Tracking',
                 text2: 'Efficient Stock Control',
                 icon1:
                     'https://www.shutterstock.com/shutterstock/videos/3397226359/thumb/2.jpg?ip=x480',
                 icons2:
                     'https://as1.ftcdn.net/v2/jpg/02/82/78/96/1000_F_282789642_ByTyt2OWKEcp2BS21Uk8X2Ko4vSg0VF1.jpg',
               ),
               FeaturesScreen3(
                 title: 'Order Management',
                 subtitle:
                     'Simplify order processing and tracking to enhance customer service and satisfaction.',
                 text1: 'Streamlined Processing',
                 text2: 'Enhanced Tracking',
                 icon1:
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS1IgnOAP24j40PH1TrFodfd92jn1s3GX2Dg&s',
                 icons2:
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_LhPHFFSrKGDBrsrg6Zr95l75H3kAFCKH3g&s',
               ),
               FeaturesScreen(
                 title: 'Karighar Management',
                 subtitle:
                     'Effectively manage artisans and workshops to ensure smooth production processes.',
                 text1: 'Artisan Coordination',
                 text2: 'Workshop Oversight',
                 icon1:
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTWvB-LW1UsalY6z_lcZqIbJwHKp5u9Badw&s',
                 icons2:
                     'https://www.shutterstock.com/shutterstock/videos/3646175737/thumb/11.jpg?ip=x480',
               ),
               FeaturesScreen3(
                 title: 'Staff Management',
                 subtitle:
                     'Efficiently handle employee scheduling, performance tracking, and payroll management.',
                 text1: 'Schedule Optimization',
                 text2: 'Performance Tracking',
                 icon1:
                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_LhPHFFSrKGDBrsrg6Zr95l75H3kAFCKH3g&s',
                 icons2:
                     'https://png.pngtree.com/png-vector/20190330/ourlarge/pngtree-vector-invoice-vector-icon-png-image_894792.jpg',
               ),
               FeaturesScreen2(
                 title: 'HUID',
                 subtitle:
                     'Implement unique identifiers for products to enhance security and streamline inventory management.',
                 text1: 'Unique Product Identification',
                 text2: 'Enhanced Security Measures',
                 icon1:
                     'https://static.vecteezy.com/system/resources/previews/025/851/742/non_2x/minimalistic-logo-template-white-icon-of-mountain-silhouette-on-black-background-modern-logotype-concept-for-business-identity-t-shirts-print-tattoo-illustration-vector.jpg',
                 icons2:
                     'https://png.pngtree.com/png-vector/20190330/ourlarge/pngtree-vector-invoice-vector-icon-png-image_894792.jpg',
               ),
               FeaturesScreen3(
                 title: 'Scheduled Report & Notification',
                 subtitle:
                     'Stay informed with scheduled reports and timely notifications for better decision-making and operational efficiency.',
                 text1: 'Timely Insights',
                 text2: 'Proactive Alerts',
                 icon1:
                     'https://static.vecteezy.com/system/resources/previews/025/851/742/non_2x/minimalistic-logo-template-white-icon-of-mountain-silhouette-on-black-background-modern-logotype-concept-for-business-identity-t-shirts-print-tattoo-illustration-vector.jpg',
                 icons2:
                     'https://png.pngtree.com/png-vector/20190330/ourlarge/pngtree-vector-invoice-vector-icon-png-image_894792.jpg',
               ),
             ],
           );
  }
}
