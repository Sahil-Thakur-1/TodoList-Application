import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/components/list_records.dart';
import '../modal/task_list.dart';
import 'addtask_screen.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TextList>(context, listen: false);
    print('build');
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "MyTodo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Consumer<TextList>(
                    builder: (context, value, child) {
                      return Text(
                          "${value.task.length} Tasks",
                          style: TextStyle(fontSize: 20, color: Colors.white)
                      );
                    }
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: Consumer<TextList>(
                  builder: (context, value, child) {
                    return ListRecord();
                  },
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context, isScrollControlled: true, builder: (context) {
            return Bottomsheet();

          });
        },
      ),
    );
  }
}
