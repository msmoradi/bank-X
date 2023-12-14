import 'package:banx/core/designsystem/widgets/card/color_styles.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class CreditCardDemo extends StatefulWidget {
  final bool flipOnTouch;
  final double scale;
  final int quarterTurns;
  final String frontPath;

  const CreditCardDemo(
      {super.key,
      this.flipOnTouch = false,
      this.scale = 1.0,
      this.quarterTurns = 0,
      this.frontPath = 'assets/images/banx-card-active-balance.png'});

  @override
  State<CreditCardDemo> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCardDemo> {
  ColorStyle appColor = ColorStyle();
  FlipCardController flipCardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    // Set the card size as a ratio of the screen size
    var cardWidth = screenWidth * 0.8 * widget.scale;
    var cardHeight = cardWidth * 0.63;

    return Directionality(
      textDirection: TextDirection.ltr, // Ensure LTR directionality
      child: RotatedBox(
        quarterTurns: widget.quarterTurns,
        child: SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: FlipCard(
            flipOnTouch: widget.flipOnTouch,
            controller: flipCardController,
            fill: Fill.fillFront,
            direction: FlipDirection.HORIZONTAL,
            front: Image.asset(
              widget.frontPath,
              fit: BoxFit.fitWidth,
              width: cardWidth,
              height: cardHeight,
            ),
            back: Image.asset(
              "assets/images/banx-card-back-active.png",
              fit: BoxFit.fitWidth,
              width: cardWidth,
              height: cardHeight,
            ),
          ),
        ),
      ),
    );
  }
}
