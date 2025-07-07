import 'package:flutter/material.dart';
import 'package:new_app/pages/Workout.dart';
import 'package:new_app/pages/itemCard.dart';

class listItems extends StatefulWidget {
  const listItems({super.key});

  @override
  State<listItems> createState() => _listItemsState();
}

class _listItemsState extends State<listItems> {
  List<Workout> workout = [
    Workout(name: 'Pushups', description: 'Strength Training', reps: 12),
    Workout(name: 'Bicep Curl', description: 'Strength Training', reps: 12),
  ];

  void _addWorkout(Workout newWorkout) {
    setState(() {
      workout.add(newWorkout);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Workout Tracker'),
      ),
      body: Column(
        children: workout.map((work) {
          return ItemCard(
            workout: work,
            delete: () {
              setState(() {
                workout.remove(work);
              });
            },
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newWorkout = await Navigator.pushNamed(context, '/Add') as Workout?;

          if (newWorkout != null) {
            _addWorkout(newWorkout); // Add new workout to the list
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
