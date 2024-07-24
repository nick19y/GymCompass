import 'package:flutter/material.dart';
import 'package:gymcompass/data/workout_inherited.dart';
import 'package:gymcompass/screens/home.dart';
import 'package:gymcompass/screens/training_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymCompass',
      theme: ThemeData(
        primarySwatch: Colors.green,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: WorkoutInherited(child: TrainingScreen()),
    );
  }
}

