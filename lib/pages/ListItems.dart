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
    Workout(name: 'bicep curl', description: 'Strength Training', reps: 12),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Workout Tracker'),
      ),
      body: Column(
        children: workout.map((work){
          return ItemCard(workout: work);
        }).toList(),
      ),
    );
  }
}