import 'package:flutter/material.dart';

class ExpirimentingWithFlexibleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: ExpirimentingWithFlexibleContainer(activity: 'asfd', color: Colors.green),
        body: Container(
          child: Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Text("Work Day"),

                    Flexible(
                        flex: 6,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Sleep (0-6)', color: Colors.brown)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Prepare For Day (6 - 7)', color: Colors.green)
                    ),

                    Flexible(
                        flex: 4,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Work Session 1 (7 - 11)', color: Colors.lightBlue)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Lunch (11- 12)', color: Colors.orange)
                    ),

                    Flexible(
                        flex: 4,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Work Session 2 (12 - 16)', color: Colors.blue)
                    ),

                    Flexible(
                        flex: 2,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Free Time (16 - 18)', color: Colors.blueGrey)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Dinner (18 - 19)', color: Colors.lightGreenAccent)
                    ),

                    Flexible(
                        flex: 3,
                        child: ExpirimentingWithFlexibleContainer(activity: 'More Free Time (19 - 22)', color: Colors.lightGreen)
                    ),

                    Flexible(
                        flex: 2,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Sleep (22 - 24)', color: Colors.brown)
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),

              Container(width: 1, color: Colors.black,),

              Flexible(
                child: Column(
                  children: [
                    Text("Work Day"),

                    Flexible(
                        flex: 6,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Sleep (0-6)', color: Colors.brown)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Prepare For Day (6 - 7)', color: Colors.green)
                    ),

                    Flexible(
                        flex: 4,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Work Session 1 (7 - 11)', color: Colors.lightBlue)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Lunch (11- 12)', color: Colors.orange)
                    ),

                    Flexible(
                        flex: 4,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Work Session 2 (12 - 16)', color: Colors.blue)
                    ),

                    Flexible(
                        flex: 2,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Free Time (16 - 18)', color: Colors.blueGrey)
                    ),

                    Flexible(
                        flex: 1,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Dinner (18 - 19)', color: Colors.lightGreenAccent)
                    ),

                    Flexible(
                        flex: 3,
                        child: ExpirimentingWithFlexibleContainer(activity: 'More Free Time (19 - 22)', color: Colors.lightGreen)
                    ),

                    Flexible(
                        flex: 2,
                        child: ExpirimentingWithFlexibleContainer(activity: 'Sleep (22 - 24)', color: Colors.brown)
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

class ExpirimentingWithFlexibleContainer extends StatelessWidget {

  final Color color;
  final String activity;

  int calculateFlex(int startHour, int endHour) {
    return endHour - startHour;
  }

  const ExpirimentingWithFlexibleContainer({Key? key, required this.color, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,

        // Uncomment for example of moving text to the left
      child: Center(
        child: Text(activity)
      ),

        // child: Align(
        //   alignment: Alignment.centerLeft,
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 8),
        //     child: Text(activity),
        //   ),
        //   // child: Text(activity),
        // )
    );
  }
}
