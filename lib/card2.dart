import 'package:flutter/material.dart';

import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            // Author information
            const AuthorCard(
                title: 'Smoothie Connoisser',
                authorName: 'Silvanus',
                imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                      right: 16,
                      child: Text(
                          'Recipe',
                          style: FooderlichTheme.lightTextTheme.headline1,
                      )
                  ),
                  Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothie',
                          style: FooderlichTheme.lightTextTheme.headline1,
                        ),
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
