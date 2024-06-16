import 'package:flutter/material.dart';

class CustomizedQuizScreen extends StatelessWidget {
  const CustomizedQuizScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widget 3: Quiz personalizado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Widget de quiz personalizado'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Volver a inicio'),
            )
          ],
        ),
      ),
    );
  }
}