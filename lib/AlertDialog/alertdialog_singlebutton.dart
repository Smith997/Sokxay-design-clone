import 'package:flutter/material.dart';

class ShowDialogWithSingleButton extends StatelessWidget {

  final Function submitButton;
  final icon;
  final String content;
  ShowDialogWithSingleButton({ required this.submitButton, this.icon, required this.content });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 220,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(icon, size: 55, color: Colors.blueGrey,),

            const SizedBox(height: 20.0),

            Text(content, style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none
            ),
            ),

            const SizedBox(height: 40.0),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () { submitButton(); },
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0)
                        ),
                        color: Colors.blue[800],
                      ),
                      child: const Center(
                        child: Text('ຕົກລົງ', style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
