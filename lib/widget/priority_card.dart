import 'package:flutter/material.dart';
import 'package:priority_matrix_app/constants.dart';
import 'package:priority_matrix_app/model/task.dart';

class PriorityCard extends StatelessWidget {
  final Color? color;
  final Task? task;
  final Function? callBack;

  const PriorityCard({Key? key, this.color, required this.task, this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // print('pressed');
        callBack;
        print('pressed');
      },
      child: Card(

          elevation: 5,
          color: color,
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Text(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    '${task?.title}',
                    style: TextStyle(fontSize: kFontSizeL, color: kTextColor),
                  ),
                ),
                Card(
                  // margin: EdgeInsets.symmetric(vertical:5),


                  color: color?.withOpacity(0.5),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text('${task?.description}',
                      style: TextStyle(
                        fontSize: kFontSizeM,
                        color: kTextColor
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
