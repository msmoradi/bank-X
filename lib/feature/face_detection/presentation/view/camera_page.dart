import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:permission_handler/permission_handler.dart';

class CameraPage extends StatefulWidget {
  final Function(String) onVideoRecorded;

  const CameraPage({super.key, required this.onVideoRecorded});

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  bool _isLoading = true;
  bool _isRecording = false;
  late CameraController _cameraController;

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  Future<void> _requestPermissions() async {
    // Request camera and storage permissions using permission_handler: ^11.3.1
    PermissionStatus cameraStatus = await Permission.camera.request();
    PermissionStatus storageStatus = await Permission.storage.request();

    // If permissions are granted, initialize the camera
    if (cameraStatus.isGranted && storageStatus.isGranted) {
      _initCamera();
    } else if (cameraStatus.isPermanentlyDenied || storageStatus.isPermanentlyDenied) {
      // Handle permanently denied permissions and guide the user to settings
      await openAppSettings();
    } else {
      // Show an error if permissions are denied
      _showPermissionError();
    }
  }

  void _showPermissionError() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Permissions Error'),
        content: const Text('Camera and storage permissions are required.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    final front = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front);
    _cameraController = CameraController(front, ResolutionPreset.max);
    await _cameraController.initialize();
    setState(() => _isLoading = false);
  }

  Future<void> _recordVideo(BuildContext context) async {
    if (_isRecording) {
      final file = await _cameraController.stopVideoRecording();
      final File tempFile = File(file.path);

      final directory = await getApplicationCacheDirectory();
      final newVideoPath = path.join(
          directory.path, '${DateTime.now().millisecondsSinceEpoch}.mp4');

      final File mp4File = await tempFile.rename(newVideoPath);

      setState(() => _isRecording = false);

      widget.onVideoRecorded(mp4File.path);
    } else {
      await _cameraController.prepareForVideoRecording();
      await _cameraController.startVideoRecording();
      setState(() => _isRecording = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Container(
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CameraPreview(_cameraController),
            Padding(
              padding: const EdgeInsets.all(25),
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                child: Icon(_isRecording ? Icons.stop : Icons.circle),
                onPressed: () => _recordVideo(context),
              ),
            ),
          ],
        ),
      );
    }
  }
}
