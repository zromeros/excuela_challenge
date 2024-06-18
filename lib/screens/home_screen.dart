import 'package:flutter/material.dart';
import '../widgets/route_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Widget Master',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Bienvenido al challenge de ingreso de Zadkiel Romero',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            const RouteButtonWidget(route: '/progress', title: 'Progreso interactivo'),
            const SizedBox(height: 16),
            const RouteButtonWidget(route: '/educational-card', title: 'Tarjeta educativa'),
            const SizedBox(height: 16),
            const RouteButtonWidget(route: '/customized-quiz', title: 'Quiz personalizado'),

          ],
        ),
      ),
    );
  }
}