import 'package:flutter/material.dart';
import 'package:gymcompass/components/Level.dart';

class Workout extends StatefulWidget {
  final String name;
  final int level;
  final int amountTraining;

  Workout(this.name, this.level, this.amountTraining, {super.key});

  int completedSessions = 0;

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 72,
                          height: 100,
                          child: Image.asset('assets/logo.jpg')),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 220,
                            child: Text(
                              widget.name,
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Level(
                            difficultyLevel: widget.level,
                          )
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 70,
                        margin: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widget.completedSessions++;
                              });
                              print(widget.completedSessions);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text("UP", style: TextStyle(fontSize: 12))
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.level > 0)
                              ? (widget.completedSessions/widget.amountTraining)
                              : 1,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Total de treinos: ${widget.completedSessions}",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}