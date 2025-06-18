import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Workout tracker'),
        backgroundColor: Colors.blue[100],
      ),
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text('text 1', style: TextStyle(
              fontSize: 40,
              color: Colors.blue[600],
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 30.0,
                    color: Colors.purple
                )
              ]
            )
          ),
            Text('text 2', style: TextStyle(
                fontSize: 50,
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 30.0,
                      color: Colors.purple
                  )
                ]
              )
            ),
            Text('text 3', style: TextStyle(
                fontSize: 60,
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 30.0,
                      color: Colors.purple
                  )
                ]
              )
            ),






          // child: Text('My first flutter app', style: TextStyle(
            //     fontSize: 40,
            //     color: Colors.blue[600],
            //     fontWeight: FontWeight.bold,
            //     shadows: [
            //       Shadow(
            //           offset: Offset(2.0, 2.0),
            //           blurRadius: 30.0,
            //           color: Colors.purple
            //       )
            //     ]
            // ),),

        ],

      )

    ),
  )));
}


