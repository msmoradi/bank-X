import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionKeypad extends StatelessWidget {
  final Function(String) onKeyTapped;
  final VoidCallback onBackspace;
  final bool isEnabled;
  final bool showDot;

  const TransactionKeypad({
    super.key,
    required this.onKeyTapped,
    required this.onBackspace,
    required this.isEnabled,
    required this.showDot,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildKeypadRow(['1', '2', '3'], context),
          const SizedBox(
            height: 14,
          ),
          _buildKeypadRow(['4', '5', '6'], context),
          const SizedBox(
            height: 14,
          ),
          _buildKeypadRow(['7', '8', '9'], context),
          const SizedBox(
            height: 14,
          ),
          _buildKeypadRow([showDot ? '.' : '', '0', 'backspace'], context),
        ],
      ),
    );
  }

  Widget _buildKeypadRow(List<String> keys, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: keys.map((key) {
        if (key == 'backspace') {
          return _buildBackspaceKey(context);
        } else if (key == '') {
          return _buildSpace();
        } else {
          return _buildKey(key, context);
        }
      }).toList(),
    );
  }

  Widget _buildKey(String key, BuildContext context) {
    return GestureDetector(
      onTap: isEnabled
          ? () {
              HapticFeedback.mediumImpact();
              onKeyTapped(key);
            }
          : null,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
        ),
        width: 80.0,
        height: 80.0,
        child: Text(
          key,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        onBackspace();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
        ),
        width: 80.0,
        height: 80.0,
        child: const Icon(
          Icons.backspace_rounded,
          size: 24.0,
        ),
      ),
    );
  }

  Widget _buildSpace() {
    return const SizedBox(
      width: 80.0,
      height: 80.0,
    );
  }
}
