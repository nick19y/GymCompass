import 'package:flutter/material.dart';
import 'package:gymcompass/components/Workout.dart';
import 'package:gymcompass/components/sections/Header.dart';
import 'package:gymcompass/data/workout_inherited.dart';
import 'package:gymcompass/screens/form_screen.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = TrainingScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   leading: Container(),
      //   title: const Text(
      //     'Treinos',
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: PageStorage(
        bucket: bucket,
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: WorkoutInherited.of(context).workoutList,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (contextNew)=>FormScreen(workoutContext: context)));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: (){
                    setState(() {
                      currentScreen = TrainingScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text('Treinos')
                    ],
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
