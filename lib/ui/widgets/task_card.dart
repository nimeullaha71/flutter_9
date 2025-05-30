import 'package:flutter/material.dart';

enum TaskStatus{
  sNew,
  progress,
  completed,
  cancelled,
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key, required this.taskStatus,
  });

  final TaskStatus taskStatus;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title will be here",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Text("Description will be here"),
            Text("Date :12/23/25"),
            Row(
              children: [
                Chip(
                  label: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: _geStatusCHipColor(),
                  side: BorderSide.none,
                ),
                const Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              ],
            )
          ],
        ),
      ),
    );
  }

  Color _geStatusCHipColor(){
    if(taskStatus == TaskStatus.sNew){
      return Colors.blue;
    }
    else if(taskStatus == TaskStatus.progress){
      return Colors.purple;
    }
    else if(taskStatus == TaskStatus.cancelled){
      return Colors.red;
    }else{
      return Colors.green;
    }
  }

}