import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final bool check;
  final String task;
  final Function togglechange;
  final Function longpresscallback;
  ToDoTile({required this.check,required this.task,required this.togglechange, required this.longpresscallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        longpresscallback();
      },
      title: Text(task,
        style: TextStyle(
            decoration: check!?TextDecoration.lineThrough:TextDecoration.none,
            fontSize: 20
        ),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: check,
        onChanged: (value){
        togglechange();
        },
      )
    );
  }
}


