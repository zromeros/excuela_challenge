import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/progress_provider.dart';
import 'screens/home_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/educational_card_screen.dart';
import 'screens/customized_quiz_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProgressProvider()),
      ],
      child: const ExcuelaTechChallenge(),
    ),
  );
}

class ExcuelaTechChallenge extends StatelessWidget {
  const ExcuelaTechChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excuela tech demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(title: 'Excuela tech challenge'),
        '/progress': (context) => const ProgressScreen(),
        '/educational-card': (context) => const EducationalCardScreen(),
        '/customized-quiz': (context) => const CustomizedQuizScreen()
      }

    );
  }
}
