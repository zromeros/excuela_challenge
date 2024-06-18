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
          return SizedBox(
            width: 400,
            child: Card(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(educationalCardModel.imageUrl),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                child: Text(
                  educationalCardModel.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  educationalCardModel.description,
                  style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(
                          provider.isLiked ? Icons.favorite : Icons.favorite_border,
                          color: provider.isLiked ? Colors.red : Colors.blueGrey,
                        ),
                        onPressed: () {
                          provider.toggleLike();
                        },
                      ),

                      IconButton(
                        icon: Icon(
                          provider.isSaved ? Icons.save : Icons.save_as_outlined,
                          color: provider.isSaved ? Colors.blueAccent : Colors.blueGrey,
                        ),
                        onPressed: () {
                          provider.toggleSave();
                        },
                      ),
                ],
                )
              ),
            ],
          ),
          ),
          );

        },
      ),
    );
  }
}