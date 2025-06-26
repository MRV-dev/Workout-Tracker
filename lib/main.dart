import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    final Purple = Color(0xFFCFBAE1);
    final tiffanyblue = Color(0xFF9AD2D6);
    final lightblue = Color(0xFF96C3CE);


    return Scaffold(
      backgroundColor: Color(0xFFF8F8FB),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('Hi, Anthony', style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      )),
                      SizedBox(height: 4),
                      Padding(
                        padding: EdgeInsets.only(right: 55),
                        child: Text('Welcome!', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Purple, tiffanyblue,]),
                    borderRadius: BorderRadius.circular(24)
                ),
                padding: EdgeInsets.all(24),
              ),
            )


          ],
        ),
      ),
    );
  }
}
