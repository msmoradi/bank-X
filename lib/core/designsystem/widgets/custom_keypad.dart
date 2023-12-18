import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomKeypad extends StatelessWidget {
  final Function(String) onKeyTapped;
  final VoidCallback onBackspace;
  final VoidCallback onPrimaryTapped;
  final bool isEnabled;
  final IconData? primaryIcon;

  const CustomKeypad({
    super.key,
    required this.onKeyTapped,
    required this.onBackspace,
    required this.onPrimaryTapped,
    required this.isEnabled,
    this.primaryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildKeypadRow(['1', '2', '3'], context),
          _buildKeypadRow(['4', '5', '6'], context),
          _buildKeypadRow(['7', '8', '9'], context),
          _buildKeypadRow(['', '0', 'backspace'], context),
        ],
      ),
    );
  }

  Widget _buildKeypadRow(List<String> keys, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: keys.map((key) {
        if (key == 'backspace') {
          return _buildBackspaceKey();
        } else if (key == '' && primaryIcon != null) {
          return _buildPrimaryKey();
        } else {
          return _buildKey(key, context);
        }
      }).toList(),
    );
  }

  Widget _buildKey(String key, BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: isEnabled
          ? () {
              HapticFeedback.mediumImpact();
              onKeyTapped(key);
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(12.0),
        width: 80.0,
        height: 80.0,
        child: Center(
          child: Text(
            key,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey() {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        HapticFeedback.mediumImpact();
        onBackspace();
      },
      child: Container(
        margin: const EdgeInsets.all(12.0),
        width: 80.0,
        height: 80.0,
        child: const Center(
          child: Icon(
            Icons.backspace_rounded,
            size: 24.0,
          ),
        ),
      ),
    );
  }

  Widget _buildPrimaryKey() {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        HapticFeedback.mediumImpact();
        onPrimaryTapped();
      },
      child: Container(
        margin: const EdgeInsets.all(12.0),
        width: 80.0,
        height: 80.0,
        child: Center(
          child: Icon(
            primaryIcon,
            size: 42.0,
          ),
        ),
      ),
    );
  }
}
