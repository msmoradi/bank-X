import 'package:banx/feature/face_detection/presentation/view/progress%D9%80circle.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterCamera extends StatefulWidget {
  final Color? color;
  final Color? iconColor;
  Function(String)? onVideoRecorded;
  final bool loading;
  final int progress;

  FlutterCamera(
      {Key? key,
      this.onVideoRecorded,
      this.iconColor = Colors.white,
      this.color = Colors.blueAccent,
      required this.loading,
      required this.progress})
      : super(key: key);

  @override
  _FlutterCameraState createState() => _FlutterCameraState();
}

class _FlutterCameraState extends State<FlutterCamera> {
  List<CameraDescription>? cameras;

  CameraController? controller;

  @override
  void initState() {
    super.initState();
    initCamera().then((_) {
      ///initialize camera and choose the back camera as the initial camera in use.
      setCamera(1);
    });
  }

  /// calls [availableCameras()] which returns a list<CameraDescription>.
  Future initCamera() async {
    cameras = await availableCameras();
    setState(() {});
  }

  /// chooses the camera to use, where the front camera has index = 1, and the rear camera has index = 0
  void setCamera(int index) {
    controller = CameraController(cameras![index], ResolutionPreset.max);
    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  /// removes the camera controller from memory after use.
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      backgroundColor: Colors.black,
      /// Performs the actual switch with an animation when _cameraView is toggled
      body: videoView(),
    );
  }

  /// Start a video recording.
  /// The video is returned as an XFile after recording is stopped.
  void setVideo() {
    controller!.startVideoRecording();
  }

  bool _isRecording = false;

  ///Video View
  Widget videoView() {
    return Stack(
      key: const ValueKey(1),
      children: [
        Center(
          child: CameraPreview(
            controller!,
          ),
        ),

        ///Side controlls
        Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 50.0,
              ),
              child: closeCameraWidget(),
            )),

        ///Bottom Controls
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              stopAndStartVideoButton(),
            ],
          ),
        )
      ],
    );
  }

  /// button to stop and start video
  Widget stopAndStartVideoButton() {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: widget.loading
          ? ProgressCircle(
              progress: widget.progress,
            )
          : FloatingActionButton(
              backgroundColor: Colors.red,
              child: Icon(_isRecording ? Icons.stop : Icons.circle),
              onPressed: () {
                //Start and stop video
                if (_isRecording == false) {
                  ///Start
                  controller!.startVideoRecording();
                  _isRecording = true;
                } else {
                  ///Stop video recording
                  controller!.stopVideoRecording().then((value) {
                    // Navigator.pop(context);
                    widget.onVideoRecorded!(value.path);
                  });
                  _isRecording = false;
                }
                setState(() {});
              },
            ),
    );
  }

  /// button to close the camera view
  Widget closeCameraWidget() {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.clear,
        color: widget.iconColor,
        size: 30,
      ),
    );
  }
}
