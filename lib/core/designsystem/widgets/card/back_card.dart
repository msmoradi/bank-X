import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                    size: 48,
                  ),
                  Text(
                    'Mehrdad Andami',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Cursive',
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 70,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
