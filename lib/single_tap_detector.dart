import 'package:flutter/material.dart';

class SingleTapDetector extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final Duration debounceDuration;

  const SingleTapDetector({
    super.key,
    required this.child,
    required this.onTap,
    this.debounceDuration = const Duration(
      milliseconds: 1000,
    ), // Default debounce time
  });

  @override
  State<SingleTapDetector> createState() => _SingleTapDetectorState();
}

class _SingleTapDetectorState extends State<SingleTapDetector> {
  bool _isTapped = false;

  void _handleTap() {
    if (!_isTapped) {
      widget.onTap(); // Execute the callback
      setState(() {
        _isTapped = true;
      });

      // Reset the tap flag after the duration has passed
      Future.delayed(widget.debounceDuration, () {
        if (mounted) {
          setState(() {
            _isTapped = false;
          });
        }
      });
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: _handleTap, child: widget.child);
  }
}
