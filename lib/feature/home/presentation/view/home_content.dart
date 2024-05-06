import 'package:banx/core/data/mock.dart';
import 'package:banx/core/designsystem/widgets/components/bank_action_row.dart';
import 'package:banx/core/designsystem/widgets/components/bank_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/diamond_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/dot_indicator_row.dart';
import 'package:banx/core/designsystem/widgets/components/gold_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:banx/core/designsystem/widgets/components/rial_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/saffron_transaction_icon.dart';
import 'package:banx/core/designsystem/widgets/components/simple_card_row.dart';
import 'package:banx/core/designsystem/widgets/components/title_row.dart';
import 'package:banx/core/designsystem/widgets/components/transaction_card.dart';
import 'package:banx/core/designsystem/widgets/nfc_scan_screen.dart';
import 'package:banx/core/domain/entities/transaction_model.dart';
import 'package:banx/feature/home/presentation/view/glass_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatefulWidget {
  final bool nfcActive;
  final void Function(NFCTag tag) onTagRead;
  final bool isLoading;

  const HomeContent(
      {super.key,
      required this.nfcActive,
      required this.onTagRead,
      required this.isLoading});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<List<Widget>> finalList = [];

  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    finalList = [
      _buildPage(
        transactionType: TransactionType.rial,
        simpleCardHist: {
          'بازدهی سرمایه شما': '٪۲۴ روز شمار',
          'درآمد شما تا کنون': '۳٬۵۴۰٬۰۰۰+ تومان',
        },
      ),
      _buildPage(
        transactionType: TransactionType.gold,
        simpleCardHist: {
          'نوسان قیمت': "(۰٬۲۵٪) ۱۱٬۴۰۰",
          'قیمت لحظه‌ای': '۳٬۵۴۰٬۰۰۰ تومان',
        },
      ),
      _buildPage(
        transactionType: TransactionType.saffron,
        simpleCardHist: {
          'نوسان قیمت': "(۰٬۲۵٪) ۱۱٬۴۰۰",
          'قیمت لحظه‌ای': '۳٬۵۴۰٬۰۰۰ تومان',
        },
      ),
      _buildPage(
        transactionType: TransactionType.diamond,
        simpleCardHist: {
          'نوسان قیمت': "(۰٬۲۵٪) ۱۱٬۴۰۰",
          'قیمت لحظه‌ای': '۳٬۵۴۰٬۰۰۰ تومان',
        },
      ),
    ];
  }

  List<Widget> _buildPage({
    required TransactionType transactionType,
    required Map<String, String> simpleCardHist,
  }) {
    return [
      const SizedBox(height: 24.0),
      _buildBankActionRow(),
      const SizedBox(height: 30.0),
      SimpleCardRow(hist: simpleCardHist),
      const SizedBox(height: 30.0),
      const TitleRow(title: 'تراکنش‌ها'),
      const SizedBox(height: 25.0),
      _buildTransactionList(transactionType),
    ];
  }

  Widget _buildBankActionRow() {
    return BankActionRow(
      actions: [
        ActionEntity(icon: 'assets/icons/plus.svg', title: 'واریز'),
        ActionEntity(icon: 'assets/icons/arrow-down.svg', title: 'برداشت'),
        ActionEntity(icon: 'assets/icons/exchange.svg', title: 'انتقال'),
        ActionEntity(icon: 'assets/icons/grid.svg', title: 'بیشتر'),
      ],
    );
  }

  Widget _buildTransactionList(
    TransactionType transactionType,
  ) {
    final mockList = MockData.transactions;
    mockList.shuffle();
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mockList.length,
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
      itemBuilder: (context, index) {
        final items = mockList
            .map((element) => TransactionModel(
                title: element.title,
                isInput: element.isInput,
                transactionType: transactionType,
                subtitle: element.subtitle,
                amount: element.amount))
            .toList();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: items[index].toTransactionCard(),
        );
      },
    );
  }

  void onPageChanged(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          forceMaterialTransparency: true,
          title: const Text(
            'روز بخیر کاربر!',
          ),
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
        body: LoadingContainer(
          showLoading: widget.isLoading,
          content: widget.nfcActive
              ? NfcScanScreen(
                  onTagRead: widget.onTagRead,
                )
              : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      surfaceTintColor: Colors.transparent,
                      expandedHeight: 344,
                      flexibleSpace: PageView.custom(
                        onPageChanged: onPageChanged,
                        childrenDelegate: SliverChildListDelegate([
                          Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Image.asset(
                                'assets/images/cash_banx.png',
                                fit: BoxFit.fitHeight,
                                width: 393,
                                height: 344,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: GlassRow(
                                  currentPageIndex: 0,
                                  subtitle: '۱٬۳۳۵٬۶۸۳٬۲۳۵ ریالء',
                                  title: 'موجودی سپرده ضد تورم',
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Image.asset(
                                'assets/images/gold_banx.png',
                                fit: BoxFit.fitHeight,
                                width: 393,
                                height: 344,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: GlassRow(
                                  currentPageIndex: 1,
                                  subtitle: '۲۰ گرم ~ ۷۴۲٬۵۲۶٬۷۰۰ ریالء',
                                  title: 'موجودی سپرده طلا',
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Image.asset(
                                'assets/images/saffron_banx.png',
                                fit: BoxFit.fitHeight,
                                width: 393,
                                height: 344,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: GlassRow(
                                  currentPageIndex: 2,
                                  subtitle: '۵۰۰۵۰۰ گرم ~ ۵۲۳٬۰۱۰٬۵۰۰ ریالء',
                                  title: 'موجودی سپرده زعفران',
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Image.asset(
                                'assets/images/diamond_banx.png',
                                fit: BoxFit.fitHeight,
                                width: 393,
                                height: 344,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: GlassRow(
                                  currentPageIndex: 2,
                                  subtitle: '۱۰ گرم ~ ۴۶٬۱۱۵٬۵۱۰ ریالء',
                                  title: 'موجودی سپرده الماس',
                                ),
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      sliver: SliverToBoxAdapter(
                        child: Center(
                            child: DotIndicatorRow(
                                currentPageIndex: _currentPageIndex,
                                numberOfDotIndicator: finalList.length)),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return finalList[_currentPageIndex][index];
                          },
                          childCount: finalList[_currentPageIndex].length,
                        ),
                      ),
                    ),
                  ],
                ),
        ));
  }
}
