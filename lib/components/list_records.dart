import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../modal/task.dart';
import '../modal/task_list.dart';
import 'list_widget.dart';

class ListRecord extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TextList>(
      builder: ( context, value, child) {
        return ListView.builder(
          itemCount: value.task.length,
          itemBuilder: (BuildContext context, int index) {
            return ToDoTile(
                check: value.task[index].isdone!,
                task: value.task[index].Taskname!,
                togglechange: (){
                  value.changevalue(index);
                },
              longpresscallback: (){
                  value.deletetask(index);
              },
            );
            },
        );
      });
      }
}
