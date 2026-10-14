import 'package:flutter/material.dart';

/// Lab 2 - build the "course card" screen from the sketch (LAB02.pdf, Figure 1).
///
/// Red zone: write this by hand, AI assistants off.
/// Run the tests often:  flutter test
class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  // TODO(Part 4): add the state you need (a counter and a favorite flag).

  @override
  Widget build(BuildContext context) {
    // TODO(Part 1-5): replace this placeholder with the screen from the sketch.
    //  - Part 1: AppBar 'COMP 205' + header row (CircleAvatar + course name/term)
    //  - Part 2: schedule row with three equal items (Expanded)
    //  - Part 3: description inside a Card
    //  - Part 4: 'Interested: N' + "I'm interested" button + favorite IconButton
    //  - Part 5: no overflow on a small phone

    return Scaffold(
      appBar: AppBar(title: const Text('COMP 205')),
      body:
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              //First Row
              SizedBox(
                height: 60,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
                  //School Icon
                  Container(
                    height: 50,
                    width: 50,

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    
                    child: Icon(Icons.school)
                  ),
                  
                  //Gap
                  SizedBox(width: 25),

                  Expanded(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile Programming', style: Theme.of(context).textTheme.titleLarge),
                        Text('Fall 2026 · B238', style: Theme.of(context).textTheme.titleLarge)
                      ],
                    )
                  )
                  
                ],)
              ),
              
              Row(
                children: [

                ],
              )

            ],
          )
        ,)
          
    );
  }
}

