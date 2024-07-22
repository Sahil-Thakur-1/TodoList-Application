import 'package:flutter/cupertino.dart';
import 'package:to_do_list/modal/task.dart';

class TextList with ChangeNotifier{
  List<Task> task = [

  ];


  void addTask(String tasktitle){
    task.add(Task(false, tasktitle));
    notifyListeners();
  }

  void changevalue(int index){
    task[index].changedone();
    notifyListeners();
  }

  void deletetask(int index){
    task.removeAt(index);
    notifyListeners();
  }
}