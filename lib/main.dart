import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Userprofile(),
  ));
}

class Userprofile extends StatelessWidget {
  const Userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF9AD2D6),
        title: Text('Info', style: TextStyle(
          fontWeight: FontWeight.bold,

        )),
        centerTitle: true,
      ),
       body: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                  children: [
                    Text('User Profile', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  )),

                  Column(
                      children: [
                        Center(
                          child:
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.person, size: 35,)
                          ),
                        ),
                      ]
                  ),
                ]),
              ),


              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                      Text('Ariel Anthony Maravilla'),

                      SizedBox(height: 20,),
                      Text('Email', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      Text('Batstate-u@g.batstate-u.edu.ph'),

                      SizedBox(height: 20,),
                      Text('Company', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      Text('Batangas State University TNEU Balayan'),

                      SizedBox(height: 20,),
                      Text('Contact Number', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      Text('09123456789'),
                    ],
                  ),
              ),
            ],
       ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            onPressed: () {
              // Do something, like navigate to edit screen or open a form
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50), // Full width
              backgroundColor: Color(0xFF08415C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Edit Profile',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),

        )
    );

  }
}

