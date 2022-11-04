import 'dart:developer';

import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350
        ),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(10),
        ),
          child: Stack(
              children: [
                Container(
// 3
                  padding: const EdgeInsets.all(16),
// 4
                  child: Column(
// 5
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
// 6
                      const Icon(
                        Icons.book,
                        color: Colors.white,
                        size: 40,
                      ),
// 7
                      const SizedBox(height: 8),
// 8
                      Text(
                        'Recipe Trends',
                        style: FooderlichTheme.darkTextTheme.headline2,
                      ),
// 9
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                // Add dark overlay BoxDecoration
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Center(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        Chip(
                          label: Text('Healthy',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text('Healthy',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Carrots',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                        Chip(
                          label: Text('Healthy',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),
                        Chip(
                          label: Text('Vegan',
                              style: FooderlichTheme.darkTextTheme.bodyText1),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: () {
                            log('delete');
                          },
                        ),

                      ],

                    )
                )
              ]
          )
      )
    );
  }
}
