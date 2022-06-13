import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {

  final Function cancelButton;
  final Function submitButton;
  final double height;

  ShowAlertDialog({required this.cancelButton, required this.submitButton, required this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.warning_amber_outlined, size: 55, color: Colors.blueGrey,),

            const SizedBox(height: 20.0),

            const Text('ທ່ານຕ້ອງການອອກຈາກລະບົບແທ້ບໍ່', style: TextStyle(
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
                    onTap: () { cancelButton(); },
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10.0)
                        ),
                        color: Colors.blueGrey[200],
                      ),
                      child: const Center(
                        child: Text('ຍົກເລີກ', style: TextStyle(
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
                Expanded(
                  child: GestureDetector(
                    onTap: () { submitButton(); },
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
