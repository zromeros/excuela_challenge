import 'package:flutter/material.dart';
import '../widgets/educational_card.dart';
import '../models/educational_card_model.dart';

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
            EducationalCardWidget(
                educationalCardModel: EducationalCardModel(
                    imageUrl: 'https://images.ctfassets.net/yadj1kx9rmg0/wtrHxeu3zEoEce2MokCSi/cf6f68efdcf625fdc060607df0f3baef/quwowooybuqbl6ntboz3.jpg',
                    title: 'esto es un titulo',
                    description: 'esto es una descripcion que puede ser muy larga'
                )
            ),
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