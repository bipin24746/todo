import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/widgets/todo_items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
      body: Column(
        children: [
          SearchBox(),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Todo Items",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              for (Todo todo in todosList)
                ToDoItem(
                  todo: todo,
                ),
            ],
          ))
        ],
      ),
    );
  }

  Widget SearchBox() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: white, borderRadius: BorderRadius.circular(25)),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                prefixIconConstraints:
                    BoxConstraints(maxHeight: 20, maxWidth: 35),
                border: InputBorder.none,
                hintText: "Search"),
          ),
        ),
      ),
    );
  }

  AppBar AppBars() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: white,
          ),
          Text(
            "Todo App",
            style: TextStyle(color: white),
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/bipin.jpg'),
            ),
          )
        ],
      ),
      backgroundColor: blue,
    );
  }
}
