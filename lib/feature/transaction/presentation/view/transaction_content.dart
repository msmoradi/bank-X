import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/core/designsystem/widgets/custom_keypad.dart';
import 'package:banx/core/designsystem/widgets/transaction_keypad.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionContent extends StatelessWidget {
  final DepositType selectedType;
  final String value;
  final VoidCallback onActionClick;
  final Function(String) onKeyTapped;
  final VoidCallback onBackspace;

  const TransactionContent({
    super.key,
    required this.selectedType,
    required this.value,
    required this.onActionClick,
    required this.onKeyTapped,
    required this.onBackspace,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        surfaceTintColor: Colors.transparent,
        title: const Text('مبلغ انتقال'),
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              'assets/icons/calendar-minus.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              'assets/icons/help-circle.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value,
                      textDirection: TextDirection.ltr,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                    Text(
                      selectedType.unit,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                  ],
                ),
                const SizedBox(height: 21),
                DropdownChipWidget(
                  title: "مبدأ انتقال",
                  type: selectedType,
                  onSelectTypeEvent: (type) {
                    context.read<TransactionBloc>().add(SelectTypeEvent(type));
                  },
                ),
                const SizedBox(height: 48),
                TransactionKeypad(
                  onKeyTapped: onKeyTapped,
                  onBackspace: onBackspace,
                  isEnabled: true,
                  showDot: true,
                ),
                const SizedBox(height: 14),
                GestureDetector(
                  onTap: () {
                    HapticFeedback.mediumImpact();
                    onActionClick();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    width: 80.0,
                    height: 80.0,
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                      width: 40.0,
                      height: 40.0,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
