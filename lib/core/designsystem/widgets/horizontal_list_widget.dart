import 'package:flutter/material.dart';

class HorizontalListWidget extends StatelessWidget {
  final List<Widget> items;
  final double leftPadding;

  const HorizontalListWidget(
      {super.key, required this.items, this.leftPadding = 16.0});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: leftPadding),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...items.expand(
            (widget) => [
              widget,
              const SizedBox(
                width: 16,
              )
            ],
          ),
        ],
      ),
    );
  }
}
