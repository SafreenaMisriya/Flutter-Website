import 'dart:math' show pi;
import 'package:atts_machinetask/constants/colors.dart';
import 'package:atts_machinetask/widgets/mediaquery.dart';
import 'package:flutter/material.dart';

class FlipCard extends StatefulWidget {
  final String heading;
  final String image;
  final String text;
  const FlipCard({super.key,required this.heading,required this.image,required this.text});

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFrontVisible = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCard() {
    if (_isFrontVisible) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      _isFrontVisible = !_isFrontVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(  // Added SizedBox with fixed dimensions
      width: mediaquerywidth(0.2, context),
      height: mediaqueryheight(0.4, context),
      child: GestureDetector(
        onTap: _toggleCard,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            final transform = Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value);
            return Transform(
              transform: transform,
              alignment: Alignment.center,
              child: Card(
                elevation: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.blackColor,
                    borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.deepPurpleAccent
                        )
                      ]
                  ),
                
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: _animation.value < pi / 2
                      ? _buildFrontSide(widget.image,widget.heading)
                      : Transform(
                          transform: Matrix4.identity()..rotateY(pi),
                          alignment: Alignment.center,
                          child: _buildBackSide(widget.text),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontSide(String image,String heading ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,  // Added for proper alignment
      mainAxisSize: MainAxisSize.min,  // Added to prevent expansion
      children: [
        Image.asset(image,height: mediaqueryheight(0.1, context),width: mediaquerywidth(0.1, context),),
        const SizedBox(height: 20),
         Text(
          heading,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const Text(
          'see more >',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildBackSide(String title) {
    return Center(
      child: Padding(
        padding:const  EdgeInsets.all(16),
        child: Text(
        title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}