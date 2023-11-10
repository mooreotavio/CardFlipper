import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card flip'),
        ),
        body: GLBModelViewer(),
      ),
    );
  }
}

class GLBModelViewer extends StatefulWidget {
  @override
  _GLBModelViewerState createState() => _GLBModelViewerState();
}

class _GLBModelViewerState extends State<GLBModelViewer> {
  var animation = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        // Get the size of the current context
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final size = renderBox.size;
        final position = details.localPosition;

        if (position.dx < size.width / 2) {
          // User tapped on the left side of the screen
          animation = 'idAction';
        } else {
          // User tapped on the right side of the screen
          animation = 'idAction.001';
        }
      },
      child: ModelViewer(
        backgroundColor: Colors.white,
        src: 'images/credit_card.glb', // Replace with your asset's URL or file path
        alt: "A 3D model of an object",
        ar: true,
        autoRotate: false,
        cameraControls: true,
        animationName: animation,
        disableTap: true,
        cameraOrbit: '90deg 90deg 25.56m'
      ),
    );
  }
}
