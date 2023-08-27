import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  Function(bool?)? callback;
  Function() deleteFunction;
  TaskTile({required this.name,this.isChecked=false,required this.callback,required this.deleteFunction});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: GestureDetector(
          onLongPress: deleteFunction,
          child: Text(name,
              style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null,
              )),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
         onChanged:callback,
        ),);
  }
}
