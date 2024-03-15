import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssistContent extends StatefulWidget {
  const AssistContent({super.key});

  @override
  State<AssistContent> createState() => _AssistContentState();
}

class _AssistContentState extends State<AssistContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('دستیار هوشمند'),
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
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
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'موضوعی که در آن به کمک نیاز دارید را انتخاب کنید',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
              const SizedBox(height: 24),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 24,
                childAspectRatio: 1.33,
                mainAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _AssistOptionCard(
                    icon: 'assets/icons/help-circle.svg',
                    title: 'پشتیبانی بانک',
                    description: 'موضوعات مربوط به کارت، صورت‌حساب، رمزها و...',
                    contentColor: Color(0xFF444F58),
                    backgroundColor: Color(0xFFD1EBDB),
                    onTap: () {},
                  ),
                  _AssistOptionCard(
                    icon: 'assets/icons/stockmarket.svg',
                    title: 'وضعیت بازار',
                    description: 'قیمت دارایی و اخبار و تحلیل آینده بازار',
                    contentColor: Color(0xFF444F58),
                    backgroundColor: Color(0xFFDFEBF6),
                    onTap: () {},
                  ),
                  _AssistOptionCard(
                    icon: 'assets/icons/calculator.svg',
                    title: 'خرج و مخارج',
                    description: 'تحلیل وضعیت درآمد و هزینه‌های شما',
                    contentColor: Color(0xFF56493E),
                    backgroundColor: Color(0xFFF4E1D2),
                    onTap: () {},
                  ),
                  _AssistOptionCard(
                    icon: 'assets/icons/help-circle.svg',
                    title: 'مشاوره پس‌انداز',
                    description: 'تحلیل رفتار مالی شما و مشاوره مالی',
                    contentColor: Color(0xFF534E57),
                    backgroundColor: Color(0xFFF4ECF7),
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class _AssistOptionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final Color contentColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  const _AssistOptionCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.contentColor,
    required this.backgroundColor,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(contentColor, BlendMode.srcIn),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.bold, color: contentColor),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: contentColor),
            ),
          ],
        ),
      ),
    );
  }
}
