import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task 1'),
      trailing: Checkbox(
        value: false,
        activeColor: Colors.red,
        //checkColor: Colors.blue,

      ),
    );
  }
}