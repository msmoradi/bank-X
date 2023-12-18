import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';

class NfcScanScreen extends StatefulWidget {
  final void Function(NFCTag tag) onTagRead;

  const NfcScanScreen({required this.onTagRead, Key? key}) : super(key: key);

  @override
  _NfcScanScreenState createState() => _NfcScanScreenState();
}

class _NfcScanScreenState extends State<NfcScanScreen> {
  bool isScanning = false;

  Future<void> startNfcScan() async {
    setState(() {
      isScanning = true;
    });

    try {
      NFCTag tag = await FlutterNfcKit.poll(
        readIso14443A: true,
        readIso14443B: false,
        readIso15693: false,
        readIso18092: false,
      );

      if (tag.type == NFCTagType.iso7816) {
        /*var result = await FlutterNfcKit.transceive(
          Uint8List.fromList([
            80,
            30,
            01,
            00,
          ]),
        );
        widget.logger.d(result);*/
        widget.onTagRead(tag);
      }
      setState(() {
        isScanning = false;
      });
    } catch (e) {
      // Handle any errors that may occur
    } finally {
      await FlutterNfcKit.finish();
      setState(() {
        isScanning = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35.0, vertical: 32),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/nfc_placeholder2.png",
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      alignment: Alignment.center,
                    ),
                    Text(
                      'برای دسترسی، کارت خود را نزدیک کنید',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'تلفن همراه را نزدیک کارت خود نگهدارید تا به دارایی‌های خود دسترسی پیدا کنید',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    PrimaryFillButton(
                      fillWidth: false,
                      label: "اسکن کارت",
                      onPressed: isScanning ? null : startNfcScan,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
