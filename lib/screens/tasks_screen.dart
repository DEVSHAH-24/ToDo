import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytasksds/Widgets/task_list.dart';
import 'package:mytasksds/Widgets/task_tile.dart';
import 'add_tasks_screen.dart';
class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=> Container());
        }
        ,
      backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      // backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topRight,
                  colors: [Colors.lightBlueAccent, Colors.white]),
            ),
            padding: EdgeInsets.only(top: 60, left: 40, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.view_list,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ToDo',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  'No tasks',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              ],
            ),

          ),
          Expanded(

            child: Container(



              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20) ),
              /*  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.topRight,
                    colors: [Colors.lightBlueAccent,Colors.white]
                ),*/

              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




//gradient: LinearGradient(
//begin: Alignment.center,
//end: Alignment.topRight,
//colors: [Colors.blue[200],Colors.white]
