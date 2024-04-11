import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class TransactionDestinationContent extends StatefulWidget {
  final String amount;
  final Function(UserInfo) onDestinationSelected;

  const TransactionDestinationContent({
    super.key,
    required this.amount,
    required this.onDestinationSelected,
  });

  @override
  State<TransactionDestinationContent> createState() =>
      _TransactionDestinationContentState();
}

class _TransactionDestinationContentState
    extends State<TransactionDestinationContent> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              'assets/icons/search.svg',
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
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مقصد انتقال',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'انتقال ${widget.amount} به',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: controller,
                autofocus: false,
                maxLines: 1,
                keyboardType: TextInputType.text,
                decoration:
                    const InputDecoration(labelText: "کارت، شبا، نام‌، تلفن"),
              ),
              const SizedBox(height: 16),
              DestinationRow(
                userInfo: UserInfo(
                  name: 'کاربر ۱',
                  cardNumber: '0000000000000001',
                  photoUrl: 'https://i.pravatar.cc/150',
                ),
                onTap: widget.onDestinationSelected,
              ),
              DestinationRow(
                userInfo: UserInfo(
                  name: 'کاربر ۲',
                  cardNumber: '0000000000000002',
                  photoUrl: 'https://i.pravatar.cc/151',
                ),
                onTap: widget.onDestinationSelected,
              ),
              DestinationRow(
                userInfo: UserInfo(
                  name: 'کاربر ۳',
                  cardNumber: '0000000000000003',
                  photoUrl: 'https://i.pravatar.cc/152',
                ),
                onTap: widget.onDestinationSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfo {
  final String name;
  final String cardNumber;
  final String photoUrl;

  UserInfo(
      {required this.name, required this.cardNumber, required this.photoUrl});
}

class DestinationRow extends StatelessWidget {
  final UserInfo userInfo;
  final Function(UserInfo) onTap;

  const DestinationRow(
      {super.key, required this.userInfo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(userInfo);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: UserInfoWidget(
          userInfo: userInfo,
        ),
      ),
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  final UserInfo userInfo;

  const UserInfoWidget({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.bottomLeft, children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(userInfo.photoUrl),
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            backgroundImage: const AssetImage('assets/images/x1.png'),
          ),
        ]),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userInfo.name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              textDirection: TextDirection.ltr,
              userInfo.cardNumber.charRagham(separator: " ").toPersianDigit(),
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }
}
