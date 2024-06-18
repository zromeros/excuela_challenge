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
                    imageUrl: 'https://marketplace.canva.com/EAF2oXRAj_Y/1/0/1600w/canva-tarjetas-educativas-memoria-de-n%C3%BAmeros-ilustrado-colorido-BvxKX2VcuA8.jpg',
                    title: 'Números',
                    description: 'Un número es un símbolo o una combinación de símbolos utilizados para representar una cantidad.'
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