import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/progress_provider.dart';

class CircularProgress extends StatelessWidget {
  final double size;
  final Color color;
  final double strokeWidth;

  const CircularProgress({
    Key? key,
    this.size = 100.0,
    this.color = Colors.blue,
    this.strokeWidth = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ProgressProvider>(
      builder: (context, progress, child) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          child: SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              value: progress.value,
              strokeWidth: strokeWidth,
              valueColor: AlwaysStoppedAnimation<Color>(color),
              backgroundColor: color.withOpacity(0.2),
            ),
          ),
        );
      },
    );
  }
}
