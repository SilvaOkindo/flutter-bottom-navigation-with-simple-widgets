import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = "Editor's choice";
  final String chef = 'Silva';
  final String description = 'Learn to make perfect bread';
  final String title = 'The art of dough';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
