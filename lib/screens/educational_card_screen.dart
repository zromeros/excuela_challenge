import 'package:flutter/material.dart';
import '../widgets/educational_card.dart';
import '../models/educational_card_model.dart';
import '../widgets/route_button.dart';

class EducationalCardScreen extends StatelessWidget {
  const EducationalCardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
            'Widget 2: Tarjeta educativa',
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
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
            const SizedBox(height: 16),
            const RouteButtonWidget(route: '/customized-quiz', title: 'Ir al quiz personalizado'),
          ],
        ),
      ),
    );
  }
}