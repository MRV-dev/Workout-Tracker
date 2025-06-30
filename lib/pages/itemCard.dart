import 'package:flutter/material.dart';
import 'Workout.dart';

class ItemCard extends StatelessWidget {
  final Workout workout;

  const ItemCard ({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF7C9082),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 18, right: 25, bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.fitness_center, size: 40,),
                      ],
                    ),

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(workout.name, style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Text(workout.description, style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                    ),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(workout.reps.toString(), style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                  ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
