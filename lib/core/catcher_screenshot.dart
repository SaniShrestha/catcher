import 'package:catcher/core/catcher.dart';
import 'package:flutter/material.dart';

class CatcherScreenshot extends StatefulWidget {
  final Widget child;
  final Catcher catcher;

  const CatcherScreenshot({
    Key? key,
    required this.child,
    required this.catcher,
  }) : super(key: key);

  @override
  State<CatcherScreenshot> createState() {
    return CatcherScreenshotState();
  }
}

class CatcherScreenshotState extends State<CatcherScreenshot>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: widget.catcher.screenshotManager.containerKey,
      child: widget.child,
    );
  }
}