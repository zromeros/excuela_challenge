import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/progress_provider.dart';
import '../widgets/progress_circular_bar.dart';
import '../widgets/route_button.dart';


class ProgressScreen extends StatelessWidget {
  const ProgressScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    final progressProvider = Provider.of<ProgressProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
            'Widget 1: Progreso interactivo',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary )
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: progressProvider.value,
              min: 0.0,
              max: 1.0,
              onChanged: (newValue) {
                progressProvider.updateProgress(newValue);
              },
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                const CircularProgress(
                  size: 150.0,
                  strokeWidth: 16.0,
                ),
                Center(
                  child: Text(
                    '${(progressProvider.value * 100).toInt()}%', // Replace with dynamic progress value
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      final newValue = (progressProvider.value - 0.25).clamp(0.0, 1.0);
                      progressProvider.updateProgress(newValue);
                    },
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      final newValue = (progressProvider.value + 0.25).clamp(0.0, 1.0);
                      progressProvider.updateProgress(newValue);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            const RouteButtonWidget(route: '/educational-card', title: 'Ir a la tarjeta educativa'),
          ],
        ),
      ),
    );
  }
}