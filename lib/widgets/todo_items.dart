import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;
  const ToDoItem({super.key,required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: white,
          leading: Icon(
            todo.isDone ? 
            Icons.check_box : Icons.check_box_outline_blank,
            color: blue,
            
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(decoration: todo.isDone? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: red, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
                iconSize: 18,
                onPressed: () {
                  print("delete");
                },
                icon: Icon(
                  Icons.delete,
                  color: white,
                )),
          ),
        ),
      ),
    );
  }
}
