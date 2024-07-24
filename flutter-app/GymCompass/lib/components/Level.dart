import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  final int difficultyLevel;
  const Level({
    required this.difficultyLevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.green
              : Colors.green[100]),
      Icon(Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.green
              : Colors.green[100]),
      Icon(Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.green
              : Colors.green[100]),
      Icon(Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.green
              : Colors.green[100]),
      Icon(Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.green
              : Colors.green[100]),
    ]);
  }
}

