import 'package:flutter/material.dart';

class AddWorkout extends StatefulWidget {
  const AddWorkout({super.key});

  @override
  State<AddWorkout> createState() => _AddWorkoutState();
}

class _AddWorkoutState extends State<AddWorkout> {

  final _formkey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  int _reps = 0;

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
              Container(
                child: Column(
                  children: [
                    Text('ADD WORKOUT', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                    SizedBox(height:10 ,),
                    Row(
                      children: [

                        Container(
                          width: 150,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Input Workout Name';
                                  }
                                  return null;
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 150,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Input Workout reps';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 10,),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Input Workout descriptions';
                      }
                      return null;
                    },
                  ),

                ],
              ),
              SizedBox(height: 13,),
              FilledButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print('The form is Validated');
                    }
                  },
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // Adjust the radius as needed
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text('Save')
              ),
            ],
          ),
        ),
      ),
    );
  }
}


