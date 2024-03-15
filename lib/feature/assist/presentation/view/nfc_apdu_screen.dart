import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'dart:async';

class ApduCommand {
  final String name;
  final String command;
  final String description;

  ApduCommand({
    required this.name,
    required this.command,
    required this.description,
  });
}

final List<ApduCommand> apduCommands = [
  ApduCommand(
    name: 'Select Payment Application',
    command: '00A4040007A0000002471001',
    description: 'Selects the MasterCard payment application.',
  ),
  ApduCommand(
    name: 'Get Processing Options',
    command: '80A8000002830000',
    description: 'Requests processing options from the card.',
  ),
  ApduCommand(
    name: 'Read Record 1',
    command: '00B2010C00',
    description: 'Reads record number 1 from the card.',
  ),
  // Add more commands as needed
];

final Map<String, String> statusWordDescriptions = {
  '9000': 'Success: The operation completed successfully.',
  // Add more status words as needed
};

class NfcApduScreen extends StatefulWidget {
  @override
  _NfcApduScreenState createState() => _NfcApduScreenState();
}

class _NfcApduScreenState extends State<NfcApduScreen> {
  final TextEditingController _apduController = TextEditingController();
  String _nfcResult = 'Waiting for NFC tag...';
  ApduCommand? _selectedCommand;
  NFCTag? _currentTag;
  bool _isSessionActive = false;
  bool _isLoading = false;
  List<String> _history = [];
  final int _historyLimit = 10; // Limit for command history
  Timer? _checkTagTimer;

  @override
  void initState() {
    super.initState();
    _startNfcSession();
  }

  @override
  void dispose() {
    _apduController.dispose();
    _checkTagTimer?.cancel();
    super.dispose();
  }

  bool _isValidHex(String input) {
    final validHexPattern = RegExp(r'^[0-9A-Fa-f]+$');
    return validHexPattern.hasMatch(input);
  }

  String _parseApduResponse(String response) {
    if (response.length < 4) {
      return 'Invalid response.';
    }

    // Extract status words (last four characters represent two bytes in hex)
    String sw1sw2 = response.substring(response.length - 4).toUpperCase();
    String data = response.substring(0, response.length - 4);

    // Get the description for the status words
    String statusDescription =
        statusWordDescriptions[sw1sw2] ?? 'Unknown status word.';

    // Build the result string
    String result = 'Status Word: $sw1sw2\n$statusDescription';

    if (data.isNotEmpty) {
      result = 'Data: $data\n' + result;
    }

    return result;
  }

  Future<void> _startNfcSession() async {
    setState(() {
      _isLoading = true;
    });
    try {
      var availability = await FlutterNfcKit.nfcAvailability;
      if (availability != NFCAvailability.available) {
        setState(() {
          _nfcResult = 'NFC is not available or not enabled on this device.';
        });
        return;
      }

      _currentTag = await FlutterNfcKit.poll(
        timeout: Duration(seconds: 20), // Adjust as needed
      );

      setState(() {
        _isSessionActive = true;
        _nfcResult = 'NFC Tag detected. Ready to send commands.';
      });

      // Start periodic checks
      _checkTagTimer = Timer.periodic(Duration(seconds: 2), (timer) {
        _checkTagPresence();
      });
    } catch (e) {
      setState(() {
        _nfcResult = 'Error starting NFC session: $e';
      });
      // Optionally restart session after delay
      await Future.delayed(Duration(seconds: 1));
      await _startNfcSession();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _checkTagPresence() async {
    try {
      // Send a simple APDU command (e.g., GET DATA with no effect)
      await FlutterNfcKit.transceive('00B0000000');
    } catch (e) {
      // Assume the tag has been removed
      setState(() {
        _nfcResult = 'NFC tag removed. Waiting for NFC tag...';
        _isSessionActive = false;
        _currentTag = null;
      });

      // Cancel the timer
      _checkTagTimer?.cancel();
      _checkTagTimer = null;

      // Restart NFC session
      await _startNfcSession();
    }
  }

  Future<void> _sendApduCommand() async {
    if (!_isSessionActive || _currentTag == null) {
      setState(() {
        _nfcResult = 'Waiting for NFC tag...';
      });
      // Try to restart the session
      await _startNfcSession();
      if (!_isSessionActive) {
        setState(() {
          _nfcResult = 'Unable to start NFC session.';
        });
        return;
      }
    }

    setState(() {
      _isLoading = true;
    });

    try {
      String apduCommand = _apduController.text.trim();

      if (apduCommand.isEmpty) {
        setState(() {
          _nfcResult = 'Please enter an APDU command.';
        });
        return;
      }

      if (!_isValidHex(apduCommand)) {
        setState(() {
          _nfcResult = 'Invalid APDU command. Please enter a valid hex string.';
        });
        return;
      }

      String response = await FlutterNfcKit.transceive(apduCommand);

      // Parse the response
      String parsedResponse = _parseApduResponse(response);

      setState(() {
        _nfcResult = parsedResponse;
        _history.insert(0, 'Command: $apduCommand\nResponse: $parsedResponse');

        // Limit the history to the most recent entries
        if (_history.length > _historyLimit) {
          _history.removeLast();
        }
      });
    } catch (e) {
      setState(() {
        _nfcResult = 'Error: $e';
        _isSessionActive = false;
        _currentTag = null;
      });

      // Cancel the timer
      _checkTagTimer?.cancel();
      _checkTagTimer = null;

      // Restart NFC session
      await _startNfcSession();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _stopNfcSession() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await FlutterNfcKit.finish();
      setState(() {
        _isSessionActive = false;
        _currentTag = null;
        _nfcResult = 'NFC Session ended.';
      });

      // Cancel the timer
      _checkTagTimer?.cancel();
      _checkTagTimer = null;
    } catch (e) {
      setState(() {
        _nfcResult = 'Error ending NFC session: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('NFC APDU Sender'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Align children to the start
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select APDU Command:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            DropdownButton<ApduCommand>(
              hint: Text('Select a command'),
              value: _selectedCommand,
              onChanged: (ApduCommand? newValue) {
                setState(() {
                  _selectedCommand = newValue;
                  _apduController.text = newValue?.command ?? '';
                });
              },
              items: apduCommands.map((ApduCommand command) {
                return DropdownMenuItem<ApduCommand>(
                  value: command,
                  child: Text(command.name),
                );
              }).toList(),
            ),
            if (_selectedCommand != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  _selectedCommand!.description,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            SizedBox(height: 20),
            Text(
              'Or Enter APDU Command (Hex String):',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _apduController,
              decoration: InputDecoration(
                labelText: 'e.g., 00A4040007A0000002471001',
              ),
            ),
            SizedBox(height: 20),
            if (_isLoading)
              Center(child: CircularProgressIndicator()),
            ElevatedButton(
              onPressed: _sendApduCommand,
              child: Text('Send APDU Command'),
            ),
            SizedBox(height: 20),
            Text(
              _nfcResult,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Command History:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _history.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    title: Text(_history[index]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
