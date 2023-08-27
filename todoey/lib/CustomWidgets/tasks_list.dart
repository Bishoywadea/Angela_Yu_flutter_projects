import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/dataBase.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<Data>(context, listen: true).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            name: Provider.of<Data>(context, listen: true).tasks[index].name,
            isChecked:
                Provider.of<Data>(context, listen: true).tasks[index].isDone,
            callback: (bool? CheckBox) {
              Provider.of<Data>(context, listen: false)
                  .updateTask(Provider.of<Data>(context, listen: false).tasks[index]);
            },
            deleteFunction: (){
              Provider.of<Data>(context, listen: false)
                  .deleteTask(Provider.of<Data>(context, listen: false).tasks[index]);
            },);
      },
    );
  }
}
