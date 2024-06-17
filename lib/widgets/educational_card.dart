import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/educational_card_model.dart';
import '../providers/educational_card_provider.dart';

class EducationalCardWidget extends StatelessWidget {
  final EducationalCardModel educationalCardModel;

  const EducationalCardWidget({super.key, required this.educationalCardModel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EducationalCardProvider(),
      child: Consumer<EducationalCardProvider>(
        builder: (context, provider, child) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(educationalCardModel.imageUrl),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    educationalCardModel.title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(educationalCardModel.description),
                ),
                ButtonBar(
                  children: [
                    IconButton(
                      icon: Icon(
                        provider.isLiked ? Icons.favorite : Icons.favorite_border,
                        color: provider.isLiked ? Colors.red : null,
                      ),
                      onPressed: () {
                        provider.toggleLike();
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('accion');
                      },
                      child: const Text('Acción'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}