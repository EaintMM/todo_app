import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
    required this.addTaskCallBack,
  }) : super(key: key);
  final Function(String? text)? addTaskCallBack;

  @override
  Widget build(BuildContext context) {
    String? inputText;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  inputText = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // add to list

                  addTaskCallBack!(inputText);
                },
                child: Text('Add'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
