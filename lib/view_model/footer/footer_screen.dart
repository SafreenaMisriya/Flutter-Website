import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Company Logo and Description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1hcw16QWSSCKjdmTuNns-GGzbD97190HUwg&s',
                          width: 40,
                        ), // Add your logo
      
                        const Text(
                          "URUMM",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'World-class technical solutions for\n'
                      'elevated jewellery store operations.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                 Column(
                  
                  children: [
                    Text(
                      'SOLUTIONS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('AU Pay', style: TextStyle(color: Colors.white)),
                    Text('AU Sales', style: TextStyle(color: Colors.white)),
                    Text('AU Shop', style: TextStyle(color: Colors.white)),
                  ],
                ),
                // Contact Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('0422 4957575', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 8),
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('support@atts.in',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            ],
                ),
    );
              // Solutions
             
        
          // Footer Bottom
         
        
    
  }
}
