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
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Info', style: TextStyle(
          fontWeight: FontWeight.bold,

        )),
        centerTitle: true,
      ),
       body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text('User Profile', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(height: 10,),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.person, size: 40,)
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 100, 0),
                 child: Column(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(right: 124),
                       child: Text('Name', style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                       )),
                     ),
                     Text('Ariel Anthony Maravilla', style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.w300,
                     )),
                     SizedBox(height: 20,),
                     Padding(
                       padding: EdgeInsets.only(right: 124),
                       child: Text('Email', style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                       )),
                     ),
                     Padding(
                       padding: EdgeInsets.only(left: 30),
                        child: Text('Batstate-u@g.batstate-u.edu.ph', style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w300,
                         ))
                     )

                   ],
                 )
                ),
              )
            ],
          ),
        )
    );

  }
}

