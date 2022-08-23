import 'package:flutter/material.dart';
import 'package:insta/src/models/Story.model.dart';

class StoryCircle extends StatelessWidget {
  final Story story;
  const StoryCircle({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outterBoxDecorationForGradient = BoxDecoration(
      color: Colors.grey,
      gradient: LinearGradient(colors: [
        Color(0xFF405DE6),
        Color(0xFF5851DB),
        Color(0xFF833AB4),
        Color(0xFFC13584),
        Color(0xFFFD1D1D),
        Color(0xFFF56040),
        Color(0xFFFCAF45),
        Color(0xFFFFDC80),
      ]),
      borderRadius: BorderRadius.circular(60.0),
      border: Border.all(
        color: Colors.white,
        width: 2.0,
      ),
    );

    return Column(
      children: [
        Container(
          width: 75.0,
          height: 75.0,
          margin: const EdgeInsets.all(3.0),
          decoration: outterBoxDecorationForGradient,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(story.imageUrl),
              ),
            ),
          ),
        ),
        Text(story.handle),
      ],
    );
  }
}
