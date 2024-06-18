import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/progress_provider.dart';
import 'providers/question_quiz_provider.dart';
import 'screens/home_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/educational_card_screen.dart';
import 'screens/customized_quiz_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProgressProvider()),
        ChangeNotifierProvider(create: (context) => QuestionQuizProvider()),
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
        colorScheme: const ColorScheme(
          primary: Colors.blue,
          secondary: Colors.white,
          surface: Colors.white,
          error: Colors.red,
          onPrimary: Colors.blueAccent,
          onSecondary: Colors.blueGrey,
          onSurface: Colors.blueGrey,
          onError: Colors.red,
          brightness: Brightness.dark,
          shadow: Colors.blueAccent,
        ),
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

