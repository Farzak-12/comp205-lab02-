
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
  int _interested = 0;
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
    // TODO(Part 1-5): replace this placeholder with the screen from the sketch.
    //  - Part 1: AppBar 'COMP 205' + header row (CircleAvatar + course name/term)
    //  - Part 2: schedule row with three equal items (Expanded)
    //  - Part 3: description inside a Card
    //  - Part 4: 'Interested: N' + "I'm interested" button + favorite IconButton
    //  - Part 5: no overflow on a small phone
    
    return Scaffold(
      appBar: AppBar(
        title: Text('COMP 205'),
        
      ),
  
      body:
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              //First Row
              SizedBox(
                height: 60,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
                  //School Icon
                  CircleAvatar(radius: 30, child: Icon(Icons.school)),
              
                  
                  //Gap
                  SizedBox(width: 25),

                  Expanded(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile Programming', style: Theme.of(context).textTheme.titleLarge),
                        Text('Fall 2026 · B238')
                      ],
                    )
                  )
                  
                ],)
              ),
              
              SizedBox(height: 10),

              //Second Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  scheduleItem(icon: Icons.schedule, date: 'Mon 10:00'),
                  scheduleItem(icon: Icons.computer, date: 'Wed 10:00'),
                  scheduleItem(icon: Icons.groups, date: 'Fri 15:00'),
                ],
              ),
            
              SizedBox(height: 10),

              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Build AI-powered mobile apps with Flutter: from widgets to machine learning and LLMs.')
                )
              ),
              
              SizedBox(height: 20,),

              Center(child: Text('Interested: $_interested'),),

              SizedBox(height: 10,),
              
              ElevatedButton(onPressed: () => setState(()=>_interested++), child: Text("I'm interested")),

               
            ],
          )
        ,)
          
    );
  }
}

class scheduleItem extends StatelessWidget{
  const scheduleItem({super.key, required this.icon, required this.date});
  final IconData icon;
  final String date;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 100,
      height: 100,
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            Text(date),
          ],
        )
    );
  }
}