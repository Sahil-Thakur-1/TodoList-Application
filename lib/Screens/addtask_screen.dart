import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/modal/task_list.dart';

class Bottomsheet extends StatelessWidget {
  String? tasktitle;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TextList>(context);
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Container(
        padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Enter here",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide().copyWith(
                      color: Colors.lightBlueAccent,
                    ))),
                onChanged: (value) {
                  tasktitle = value;
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                color: Colors.lightBlueAccent,
                child: RawMaterialButton(
                    onPressed: () {
                      provider.addTask(tasktitle!);
                      Navigator.pop(context);
                    },
                    child: const Text("ADD",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
              ),
            ],
          )),
    );
  }
}
