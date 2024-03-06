import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/components/loading_container.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SelectCardContent extends StatefulWidget {
  final Function() onActionClick;
  final Function(String) showMessage;
  final bool showLoading;
  final bool buttonLoading;
  final String firstName;
  final String lastName;
  final String title;
  final String description;
  final String priceLabel;

  const SelectCardContent({
    super.key,
    required this.onActionClick,
    required this.showMessage,
    required this.firstName,
    required this.lastName,
    required this.title,
    required this.description,
    required this.priceLabel,
    required this.showLoading,
    required this.buttonLoading,
  });

  @override
  State<SelectCardContent> createState() => _SelectCardContentState();
}

class _SelectCardContentState extends State<SelectCardContent> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller =
        VideoPlayerController.asset('assets/videos/metal_card_motion.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();

    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        return LoadingContainer(
          showLoading: snapshot.connectionState != ConnectionState.done &&
              !widget.showLoading,
          content: Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                            'سفارش کارت',
                          ),
                        ),
                        const Spacer(),
                        Text(
                          widget.title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          widget.description,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          widget.priceLabel,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.lineThrough,
                              ),
                        ),
                        const SizedBox(height: 16),
                        PrimaryFillButton(
                          label: "سفارش رایگان کارت فلزی",
                          onPressed: widget.onActionClick,
                          isLoading: widget.buttonLoading,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      future: _initializeVideoPlayerFuture,
    );
  }
}
