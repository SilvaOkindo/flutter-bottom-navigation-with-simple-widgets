import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({Key? key,
    required this.title,
    required this.authorName,
    this.imageProvider
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                circleRadius: 28,
              ),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),

          // favorite icon
          IconButton(
              onPressed: () {
                const snackbar = SnackBar(content: Text('Favorite pressed'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.grey[400],
              )
          )
        ],
      ),
    );
  }
}
