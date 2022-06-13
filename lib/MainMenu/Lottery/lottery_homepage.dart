import 'package:flutter/material.dart';
import 'package:sokxai_clone/MainMenu/Lottery/lottery_animal.dart';

import 'lottery_modern.dart';

class CardDetail {
  String InputNumber;
  String InputAmount;
  CardDetail({ required this.InputNumber, required this.InputAmount});
}

class LotteryPage extends StatefulWidget {
  const LotteryPage({Key? key}) : super(key: key);

  @override
  State<LotteryPage> createState() => _LotteryPageState();
}

class _LotteryPageState extends State<LotteryPage> {

  final List TabBarTitle = [ ['ຫວຍທັນສະໄໝ', true], ['ຫວຍນາມສັດ', false] ];
  late bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text('ຈຳໜ່າຍຫວຍໂຊກໄຊ', style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900],
        ),
        ),
        centerTitle: true,
        actions: [
          TextButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.wifi_protected_setup_outlined),
            label: const Text('ເບິ່ງບິນ'),

          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.indigo),
        elevation: 0.8,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = true;
                      },
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)
                          ),
                          color: isSelected ? Colors.indigo[800] : Colors.grey[400],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.volunteer_activism, size: 30, color: Colors.white,),
                            SizedBox(width: 5.0,),
                            Text('ຫວຍທັນສະໄໝ',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 5.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isSelected = false;
                      },
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)
                          ),
                          color: isSelected ? Colors.grey[400] : Colors.teal[800],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.airline_seat_flat, size: 30, color: Colors.white,),
                            SizedBox(width: 5.0,),
                            Text('ຫວຍນາມສັດ',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 5.0,
            color: isSelected ? Colors.indigo[800] : Colors.teal[800],
          ),

          // Buy lottery page
          Expanded(
            child: Column(
              children: [
                isSelected ? ModernLottery() : AnimalLottery(),
                // isSelected ?
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: InputValueNumber.length,
                //     itemBuilder: (context, index){
                //       return LotteryPreview(
                //         inputNumber: InputValueNumber[index].InputNumber,
                //         inputAmount: InputValueNumber[index].InputAmount,
                //       );
                //     },
                // ) :
                // AnimalLottery(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
