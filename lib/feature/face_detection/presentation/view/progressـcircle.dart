import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  final int progress; // The progress value from 0 to 100

  const ProgressCircle({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    double progressValue = progress / 100; // Convert progress to 0.0 - 1.0 range

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progressValue, // Show progress
            strokeWidth: 6.0, // Adjust thickness if needed
          ),
          Text(
            '$progress%', // Display the progress as a percentage
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
