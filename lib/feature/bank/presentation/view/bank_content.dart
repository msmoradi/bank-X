import 'package:banx/core/designsystem/widgets/card/credit_card_demo.dart';
import 'package:banx/core/designsystem/widgets/components/bank_action_row.dart';
import 'package:banx/core/designsystem/widgets/components/card_delivery_state.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/core/designsystem/widgets/components/bank_transaction_icon.dart';
import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:banx/core/domain/entities/transaction_model.dart';
import 'package:banx/feature/bank/presentation/bloc/bank_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankContent extends StatelessWidget {
  final bool showCardDeliveryButton;
  final bool showLoading;
  final bool showCardDeliveryContainer;
  final String cardFrontPath;
  final String cardDeliveryActionTitle;
  final String cardDeliveryActionAssetPath;
  final Function() onCardDeliveryActionClick;
  final CardDeliveryEntity cardDeliveryEntity;
  final BankCardStatus bankCardStatus;

  final List<TransactionModel> transactions;

  const BankContent({
    super.key,
    required this.showCardDeliveryButton,
    required this.cardDeliveryActionTitle,
    required this.cardDeliveryActionAssetPath,
    required this.onCardDeliveryActionClick,
    required this.cardDeliveryEntity,
    required this.cardFrontPath,
    required this.bankCardStatus,
    required this.showCardDeliveryContainer,
    required this.showLoading,
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('روز بخیر کاربر!'),
        titleTextStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
        centerTitle: false,
        leadingWidth: 48.0,
        titleSpacing: 6.0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            'assets/images/circle_avatar.png',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
              width: 32,
              height: 32,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/help-circle.svg',
              width: 32,
              height: 32,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: LoadingContainer(
        showLoading: showLoading,
        content: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: CreditCardDemo(
                  frontPath: cardFrontPath,
                  flipOnTouch: bankCardStatus == BankCardStatus.activated,
                  quarterTurns: 0,
                  scale: 1.1,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              BankActionRow(
                actions: [
                  ActionEntity(
                      icon: 'assets/icons/plus.svg',
                      title: 'واریز',
                      actionClick: onCardDeliveryActionClick),
                  ActionEntity(
                      icon: 'assets/icons/exchange.svg',
                      title: 'انتقال وجه',
                      actionClick: onCardDeliveryActionClick),
                  ActionEntity(
                      icon: 'assets/icons/lock.svg',
                      title: 'رمز کارت',
                      actionClick: onCardDeliveryActionClick),
                  ActionEntity(
                      icon: 'assets/icons/grid.svg',
                      title: 'بیشتر',
                      actionClick: onCardDeliveryActionClick),
                ],
              ),
              showCardDeliveryContainer
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: CardDeliveryContainer(
                        showButton: showCardDeliveryButton,
                        actionTitle: cardDeliveryActionTitle,
                        actionAssetPath: cardDeliveryActionAssetPath,
                        onActionClick: onCardDeliveryActionClick,
                        cardDeliveryEntity: cardDeliveryEntity,
                      ),
                    )
                  : const SizedBox(
                      height: 30.0,
                    ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleRow(
                      title: 'تراکنش‌ها',
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                prototypeItem: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                  child: TransactionCard(
                    image: BankTransactionIcon(
                      isInput: true,
                    ),
                    title: "واریز به سپرده",
                    subtitle: "شنبه | ۲۳ تیر | ۱۲:۲۲",
                    amount: "۵٬۵۰۰٬۰۰۰ ﷼",
                  ),
                ),
                itemCount: transactions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 5),
                    child: transactions[index].toTransactionCard(),
                  );
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
