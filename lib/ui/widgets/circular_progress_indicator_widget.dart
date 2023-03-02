import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  final ImageChunkEvent loadingProgress;

  const CircularProgressIndicatorWidget(
      {Key? key, required this.loadingProgress})
      : super(key: key);

  @override
  State<CircularProgressIndicatorWidget> createState() =>
      _CircularProgressIndicatorWidgetState();
}

class _CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: widget.loadingProgress.expectedTotalBytes != null
          ? widget.loadingProgress.cumulativeBytesLoaded /
              widget.loadingProgress.expectedTotalBytes!
          : null,
    );
  }
}
