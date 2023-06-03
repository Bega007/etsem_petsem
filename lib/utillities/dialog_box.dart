import 'package:flutter/material.dart';
import 'package:todo_app/utillities/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Taze etsem-petsemleri goş",
              ),
            ),

            //buttons => yes or cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                MyButton(
                    text: "Goş",
                    onPressed: onSave,
                ),

                SizedBox(width: 8,),

                MyButton(
                    text: "Yza",
                    onPressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
