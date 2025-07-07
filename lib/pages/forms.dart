import 'package:flutter/material.dart';
import 'Workout.dart';

class AddWorkout extends StatefulWidget {
  const AddWorkout({super.key});

  @override
  State<AddWorkout> createState() => _AddWorkoutState();
}

class _AddWorkoutState extends State<AddWorkout> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _repsController = TextEditingController();

  // List will be updated when the form is submitted
  void _addWorkout() {
    final newWorkout = Workout(
      name: _nameController.text,
      description: _descriptionController.text,
      reps: int.tryParse(_repsController.text) ?? 0,
    );

    // Clear the form fields after adding the workout
    _nameController.clear();
    _descriptionController.clear();
    _repsController.clear();

    // Pass the new workout back to the previous screen
    Navigator.pop(context, newWorkout);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7C9082),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Text('ADD WORKOUT', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Row(
                children: [
                  // Workout Name
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Workout Name',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Workout Name';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  // Reps
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _repsController,
                      decoration: InputDecoration(
                        labelText: 'Reps',
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Input Workout reps';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // Description Field
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input Workout descriptions';
                  }
                  return null;
                },
              ),
              SizedBox(height: 13),
              // Save Button
              FilledButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _addWorkout();
                  }
                },
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
