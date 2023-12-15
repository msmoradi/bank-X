import 'package:banx/core/designsystem/widgets/components/simple_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SimpleCardRow extends StatelessWidget {
  final Map<String, String> hist;

  SimpleCardRow({super.key, required this.hist});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SimpleCard(
            imagePath: 'assets/images/mask.png',
            title: hist.keys.first,
            subtitle: hist.values.first,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: SimpleCard(
            imagePath: 'assets/images/rocket.png',
            title: hist.keys.last,
            subtitle: hist.values.last,
          ),
        ),
      ],
    );
  }
}
