import 'package:banx/core/designsystem/widgets/button/fill/secondary_button.dart';
import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDeliveryContainer extends StatelessWidget {
  final bool showButton;
  final String actionTitle;
  final String actionAssetPath;
  final Function() onActionClick;
  final CardDeliveryEntity cardDeliveryEntity;

  const CardDeliveryContainer({
    super.key,
    required this.showButton,
    required this.actionTitle,
    required this.actionAssetPath,
    required this.onActionClick,
    required this.cardDeliveryEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: showButton
            ? Column(
                children: [
                  CardDeliveryState(cardDeliveryEntity: cardDeliveryEntity),
                  const SizedBox(
                      height: 16.0), // Space between indicator and text
                  SecondaryFillButton(
                    label: actionTitle,
                    onPressed: onActionClick,
                    icon: SvgPicture.asset(
                      actionAssetPath,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSecondaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                ],
              )
            : CardDeliveryState(cardDeliveryEntity: cardDeliveryEntity),
      ),
    );
  }
}

enum CardDeliveryStatus { cardOrder, cardIssuance, cardDelivery }

class CardDeliveryState extends StatelessWidget {
  final CardDeliveryEntity cardDeliveryEntity;

  const CardDeliveryState({super.key, required this.cardDeliveryEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        // Background color similar to the attached image
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardDeliveryStep(
            passed: cardDeliveryEntity.cardOrder.isPassed,
            title: cardDeliveryEntity.cardOrder.title,
            description: cardDeliveryEntity.cardOrder.subtitle,
          ),
          CardDeliveryStep(
            passed: cardDeliveryEntity.cardIssuance.isPassed,
            title: cardDeliveryEntity.cardIssuance.title,
            description: cardDeliveryEntity.cardIssuance.subtitle,
          ),
          CardDeliveryStep(
            passed: cardDeliveryEntity.cardDelivery.isPassed,
            title: cardDeliveryEntity.cardDelivery.title,
            description: cardDeliveryEntity.cardDelivery.subtitle,
          ),
        ],
      ),
    );
  }
}

class CardDeliveryStep extends StatelessWidget {
  final bool passed;
  final String title;
  final String description;

  const CardDeliveryStep({
    super.key,
    required this.passed,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Rounded background indicator
          Container(
            height: 8,
            decoration: BoxDecoration(
              color: passed
                  ? Theme.of(context).colorScheme.secondaryFixedDim
                  : Theme.of(context)
                      .colorScheme
                      .surfaceContainerHighest, // Lighter color
              borderRadius: BorderRadius.circular(20.0), // Rounded shape
            ),
          ),
          const SizedBox(height: 8.0), // Space between indicator and text
          // Title text
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(height: 8.0), // Space between title and description
          // Description text
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.surfaceTint),
          ),
        ],
      ),
    );
  }
}
