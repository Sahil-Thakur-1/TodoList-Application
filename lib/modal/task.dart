import 'package:flutter/cupertino.dart';

class Task {
  Task(this.isdone,this.Taskname);
  String? Taskname;
  bool? isdone;
  void changedone(){
    isdone = !isdone!;
    print(isdone);
  }
}