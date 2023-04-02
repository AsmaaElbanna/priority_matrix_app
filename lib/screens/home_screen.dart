import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:priority_matrix_app/constants.dart';
import 'package:priority_matrix_app/model/task.dart';

import '../components/priority_card.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: const Text('Priority Matrix'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,


            children: [
                  PriorityCard(
                    color: kGreen,
                    task: Task(title: 'Urgent & Important', description: 'Do it now'),
                    callBack: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailsScreen()));

                    },
                  ),
              PriorityCard(
                color: kBlue,
                task: Task(title: ' Important & Not Urgent', description: 'Decide when to do it'),
              ),
                  PriorityCard(
                    color: kYellow,
                    task: Task(title: 'Urgent & Not Important', description: 'Delegate it'),
                  ),

                  PriorityCard(
                    color: kRed,
                    task: Task(title: 'Not Urgent & Not Important', description: 'Delete it'),
                  )

            ],

          )
      ),
    );
  }
}
