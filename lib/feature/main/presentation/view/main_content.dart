import 'package:banx/feature/assist/presentation/view/assist_page.dart';
import 'package:banx/feature/bank/presentation/view/bank_page.dart';
import 'package:banx/feature/home/presentation/view/home_page.dart';
import 'package:banx/feature/profile/presentation/view/profile_page.dart';
import 'package:banx/feature/transaction/presentation/view/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainContent extends StatefulWidget {
  final Function(String) showMessage;
  final VoidCallback logout;
  final VoidCallback cardActivation;
  final int initTabIndex;

  const MainContent({
    super.key,
    required this.showMessage,
    required this.cardActivation,
    required this.initTabIndex,
    required this.logout,
  });

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  int? _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        BankPage(
          showMessage: widget.showMessage,
          cardActivation: widget.cardActivation,
        ),
        const TransactionPage(),
        const HomePage(),
        const AssistPage(),
        ProfilePage(
          showMessage: widget.showMessage,
          logout: widget.logout,
        ),
      ][_selectedIndex ?? widget.initTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/solid-home.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
            ),
            label: 'بانک',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/exchange.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/exchange.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
            ),
            label: 'انتقال',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/banx.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/banx.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
            ),
            label: 'بنکس',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/wave.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/wave.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
            ),
            label: 'دستیار',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/user-01.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.outline, BlendMode.srcIn),
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                'assets/icons/user-01.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
            ),
            label: 'پروفایل',
          ),
        ],
        currentIndex: _selectedIndex ?? widget.initTabIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.outline,
        selectedLabelStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.normal,
            ),
        onTap: _onItemTapped,
      ),
    );
  }
}
