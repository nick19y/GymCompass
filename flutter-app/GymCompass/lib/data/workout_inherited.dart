import 'package:flutter/material.dart';
import 'package:gymcompass/components/Workout.dart';

class WorkoutInherited extends InheritedWidget {
  WorkoutInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Workout> workoutList = [
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
    Workout('Treino A', 2, 40),
  ];
  void newWorkout(String name, int level, int amountTraining){
    workoutList.add(Workout(name, level, amountTraining));
  }

  static WorkoutInherited of(BuildContext context) {
    final WorkoutInherited? result = context.dependOnInheritedWidgetOfExactType<WorkoutInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(WorkoutInherited old) {
    return old.workoutList.length != workoutList.length;
  }
}
