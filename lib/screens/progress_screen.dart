import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/progress_provider.dart';
import '../widgets/progress_circular_bar.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    final progressProvider = Provider.of<ProgressProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widget 1: Progreso interactivo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgress(
              size: 150.0,
              color: Colors.green,
              strokeWidth: 10.0,

            ),
            const SizedBox(height: 20),
            Slider(
              value: progressProvider.value,
              min: 0.0,
              max: 1.0,
              onChanged: (newValue) {
                progressProvider.updateProgress(newValue);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/educational-card',);
              },
              child: const Text('Reto 2'),
            ),
          ],
        ),
      ),
    );
  }
}