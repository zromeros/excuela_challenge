import 'package:flutter/material.dart';


class EducationalCardScreen extends StatelessWidget {
  const EducationalCardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Widget 2: Tarjeta educacional'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Widget de tarjeta educacional'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/customized-quiz',);
              },
              child: const Text('Reto 3'),
            ),
          ],
        ),
      ),
    );
  }
}