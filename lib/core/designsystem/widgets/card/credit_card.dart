import 'package:banx/core/designsystem/widgets/card/back_card.dart';
import 'package:banx/core/designsystem/widgets/card/color_styles.dart';
import 'package:banx/core/designsystem/widgets/card/front_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  final Widget text;
  final bool flipOnTouch;
  final double scale;
  final int quarterTurns;

  const CreditCard(
      {super.key,
      required this.text,
      required this.flipOnTouch,
      this.scale = 1.0,
      this.quarterTurns = 0});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
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
            front: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColor.appColor.fronBackgroundColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: FrontCard(
                cardHeight: cardHeight,
                text: widget.text,
              ),
            ),
            back: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(350 / 20),
                color: appColor.appColor.backBackgroundColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              width: double.infinity,
              child: const BackCard(),
            ),
          ),
        ),
      ),
    );
  }
}
