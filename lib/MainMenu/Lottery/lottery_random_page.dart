import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RandomLottery extends StatefulWidget {

  final double height;
  final Function cancelButton;
  final Function submitButton;

  RandomLottery({ required this.height, required this.submitButton, required this.cancelButton});

  @override
  State<RandomLottery> createState() => _RandomLotteryState();
}

class _RandomLotteryState extends State<RandomLottery> {

  List Number = [[1, false], [2, false], [3, false], [4, false], [5, false], [6, true]];

  void boxNumberSelected(int index) {
    setState(() {
      for(int i=0; i<Number.length; i++){
        Number[i][1] = false;
      }
      Number[index][1] = true;
    });
  }

  var numberValue = '6';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.height,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('ສຸ່ມເລກ', style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none
            ),
            ),

            const SizedBox(height: 15.0),

            const Text('ສຸ່ມເລືອກຫຼັກເລກ', style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none
            ),
            ),

            const SizedBox(height: 5.0),

            // RANDOM LIST OF BOX NUMBER
            Container(
              height: 50,
              // color: Colors.red,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Number.length,
                  itemBuilder: (context, index){
                return RandomNumberBox(
                  number: Number[index][0],
                  isSelectedBox: Number[index][1],
                  onTap: (){
                    boxNumberSelected(index);
                    setState(() {
                      numberValue = Number[index][0].toString();
                    });
                    },
                );
                }
              ),
            ),

            const SizedBox(height: 12.0),

            const Text('ກຳນົດເລກ (ໃສ່ຫຼືບໍ່ໃສ່ກໍ່ໄດ້):', style: TextStyle(
                fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.normal, decoration: TextDecoration.none
            ),
            ),

            const SizedBox(height: 5.0),

            // RANDOM LIST OF TEXTFIELD
            Container(
              height: 50,
              // color: Colors.red,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: int.tryParse(numberValue),
                  itemBuilder: (context, index){
                    return RandomInputBox();
                  }
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              margin: const EdgeInsets.only(top: 15.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text('ຈຳນວນເລກ:', style: TextStyle(
                            fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.normal, decoration: TextDecoration.none
                        ),
                        ),
                        Material(
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.orange, width: 2),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            style: const TextStyle(
                                fontSize: 18.0
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      children: [
                        const Text('ຈຳນວນເງິນ:', style: TextStyle(
                            fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.normal, decoration: TextDecoration.none
                        ),
                        ),
                        Material(
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.orange, width: 2),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            style: const TextStyle(
                                fontSize: 18.0
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () { widget.cancelButton(); },
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
                    onTap: () { widget.submitButton(); },
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


class RandomNumberBox extends StatelessWidget {

  final int number;
  final bool isSelectedBox;
  final VoidCallback onTap;
  RandomNumberBox({ required this.number, required this.isSelectedBox, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          color: isSelectedBox ? Colors.indigo[800] : Colors.grey[300],
        ),
        child: Center(
          child: Text('${number}', style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, decoration: TextDecoration.none,
            color: isSelectedBox ? Colors.white : Colors.black,
          ),
          ),
        ),
      ),
    );
  }
}

class RandomInputBox extends StatelessWidget {
  const RandomInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
      // padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
      child: Material(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(8.0)
            ),
            hintText: '?',
          ),
          onChanged: (value){
            if(value.length == 1){
              FocusScope.of(context).nextFocus();
            }
          },
          keyboardType: TextInputType.phone,
          inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
          style: const TextStyle(
              fontSize: 18.0
          ),
        ),
      ),
    );
  }
}
