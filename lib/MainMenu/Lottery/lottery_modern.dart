import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'lottery_random_page.dart';

// class CardDetail {
//   String InputNumber;
//   String InputAmount;
//   CardDetail({ required this.InputNumber, required this.InputAmount});
// }

class ModernLottery extends StatefulWidget {
  const ModernLottery({Key? key}) : super(key: key);

  @override
  State<ModernLottery> createState() => _ModernLotteryState();
}

class _ModernLotteryState extends State<ModernLottery> {

  // final _textController = TextEditingController();
  // final _amountController = TextEditingController();
  //
  // final List<CardDetail> InputValueNumber = [
  //   CardDetail(InputNumber: '', InputAmount: '')
  // ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/lao_lottery.png', height: 75,),
                      const SizedBox(width: 8.0,),
                      Image.asset('assets/soksay_lottery.png', height: 100,),
                    ],
                  ),
                  Text('ຕົວແທນນະຄອນຫຼວງເລກ 4',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 35.0),
                    padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 25.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text('ງວດວັນທີ 01/06/2022',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        const Text('ປິດການຂາຍໃນອີກ:',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          ),
                        ),

                        const SizedBox(height: 8.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                Text('01', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                                Text('ມື້', style: TextStyle(),),
                              ],
                            ),
                            const SizedBox(width: 30.0,),
                            Column(
                              children: const [
                                Text('01', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                                Text('ຊົ່ວໂມງ', style: TextStyle(),),
                              ],
                            ),
                            const SizedBox(width: 30.0,),
                            Column(
                              children: const [
                                Text('01', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                                Text('ນາທີ', style: TextStyle(),),
                              ],
                            ),
                            const SizedBox(width: 30.0,),
                            Column(
                              children: const [
                                Text('01', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,),),
                                Text('ວິນາທີ', style: TextStyle(),),
                              ],
                            ),
                          ],
                        ),

                        const Divider(height: 50.0,),

                        const Text('ຜົນຫວຍ 30/05/2022', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),

                        // Container(
                        //   // padding: EdgeInsets.all(10.0),
                        //   height: 50,
                        //   color: Colors.greenAccent,
                        //   child: GridView.builder(
                        //     itemCount: 6,
                        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
                        //       itemBuilder: (context, index){
                        //         return MultipleColorCircle(
                        //           colorOccurrences: {Colors.blue: 1, Colors.green: 1, Colors.yellow: 1, Colors.red: 1},
                        //           child: Text('hi'),
                        //         );
                        //       },
                        //   ),
                        // ),

                        const SizedBox(height: 20.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MultipleColorCircle(
                              colorOccurrences: {Colors.pinkAccent: 1, Colors.deepPurpleAccent: 1, Colors.green: 1, Colors.blue: 1, Colors.deepOrange: 1, Colors.orangeAccent: 1},
                              child: const Text('6', style: TextStyle(fontSize: 20.0),),
                            ),
                            const SizedBox(width: 30.0,),
                            MultipleColorCircle(
                              colorOccurrences: {Colors.deepPurpleAccent: 1, Colors.green: 1, Colors.blue: 1, Colors.deepOrange: 1, Colors.orangeAccent: 1},
                              child: const Text('5', style: TextStyle(fontSize: 20.0),),
                            ),
                            const SizedBox(width: 30.0,),
                            MultipleColorCircle(
                              colorOccurrences: {Colors.green: 1, Colors.blue: 1, Colors.deepOrange: 1, Colors.orangeAccent: 1},
                              child: const Text('4', style: TextStyle(fontSize: 20.0),),
                            ),
                            const SizedBox(width: 30.0,),
                            MultipleColorCircle(
                              colorOccurrences: {Colors.blue: 1, Colors.deepOrange: 1, Colors.orangeAccent: 1},
                              child: const Text('3', style: TextStyle(fontSize: 20.0),),
                            ),
                            const SizedBox(width: 30.0,),
                            MultipleColorCircle(
                              colorOccurrences: {Colors.deepOrange: 1, Colors.orangeAccent: 1, },
                              child: const Text('2', style: TextStyle(fontSize: 20.0),),
                            ),
                            const SizedBox(width: 30.0,),
                            MultipleColorCircle(
                              colorOccurrences: {Colors.orangeAccent: 1,},
                              child: const Text('1', style: TextStyle(fontSize: 20.0),),
                            ),
                          ],
                        ),

                        const SizedBox(height: 35.0,),

                        Image.asset('assets/dog.png', height: 120,),
                        const SizedBox(height: 10.0,),
                        const Text('(ໝາ)', style: TextStyle(fontSize: 18.0),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            // height: 82,
            padding: const EdgeInsets.fromLTRB(8.0, 0.0 , 8.0, 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffbdbdbd)),
              color: Colors.grey[300],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                      width: 48,
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.amber,
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.all_inclusive_outlined, color: Colors.white),
                          Text('ຕຳລາ', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),)
                        ],
                      )
                  ),
                ),

                const SizedBox(width: 5.0),

                // RANDOM LOTTERY BUTTON
                GestureDetector(
                  onTap: (){
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context){
                        return RandomLottery(
                          height: 410,
                          cancelButton: (){ Navigator.of(context).pop(); },
                          submitButton: (){},
                        );
                      },
                    );
                  },

                  child: Container(
                      width: 48,
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.redAccent,
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.waves_outlined, color: Colors.white),
                          Text('ສຸ່ມເລກ', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      )
                  ),
                ),
                const SizedBox(width: 5.0),

                Expanded(
                  flex: 2,
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(2.0),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(8.0),
                    //     bottomRight: Radius.circular(8.0),
                    //   ),
                    //   border: Border.all(color: Colors.blueGrey),
                    //   color: Colors.grey[50],
                    // ),
                    child: Column(
                        children: [
                          const Text('ປ້ອນເລກ', style: TextStyle(fontSize: 10.0),),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.grey),
                              color: Colors.grey[50]
                            ),
                            child: TextField(
                              // controller: _textController,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  border: InputBorder.none
                              ),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [LengthLimitingTextInputFormatter(6), FilteringTextInputFormatter.digitsOnly],
                              style: const TextStyle(
                                  fontSize: 18.0
                              ),
                            ),
                          )
                        ]
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  child: Column(
                      children: [
                        const Text('ຈຳນວນເງິນ', style: TextStyle(fontSize: 10.0),),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.grey),
                              color: Colors.grey[50]
                          ),
                          child: TextField(
                            // controller: _amountController,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                border: InputBorder.none
                            ),
                            keyboardType: TextInputType.phone,
                            inputFormatters: [LengthLimitingTextInputFormatter(6), FilteringTextInputFormatter.digitsOnly],
                            style: const TextStyle(
                                fontSize: 18.0
                            ),
                          ),
                        )
                      ]
                  ),
                ),
                const SizedBox(width: 5.0),

                GestureDetector(
                  onTap: () {
                    // InputValueNumber.add(CardDetail(InputNumber: _textController.text, InputAmount: _amountController.text));
                    // setState(() {});
                  },
                  child: Container(
                      width: 48,
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green,
                      ),
                      child: Column(
                        children: const [
                          Icon(Icons.add_outlined, color: Colors.white),
                          Text('ເພີ່ມ', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      )
                  ),
                ),

              ],
            ),
          ),

          InkWell(
            onTap: (){},
            child: Container(
              color: Colors.blue[800],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(' '),
                      Text('ຢືນຢັນຊື້ຫວຍທັນສະໄໝ',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultipleColorCircle extends StatelessWidget {
  final Map<Color, int> colorOccurrences;
  final double height;
  final Widget? child;

  @override
  MultipleColorCircle({required this.colorOccurrences, this.height = 20, this.child});
  Widget build(BuildContext context) => Container(
    height: height,
    width: height,
    child: CustomPaint(
      size: Size(20, 20),
      child: Center(child: child),
      painter: _MultipleColorCirclePainter(
        colorOccurrences: colorOccurrences,
        height: height,
      ),
    ),
  );
}

class _MultipleColorCirclePainter extends CustomPainter {
  final Map<Color, int> colorOccurrences;
  final double height;

  @override
  _MultipleColorCirclePainter({required this.colorOccurrences, required this.height});
  double pi = math.pi;

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 5;
    Rect myRect = Rect.fromCircle(center: Offset(height / 2, height / 2), radius: height);

    double radianStart = 0;
    double radianLength = 0;
    int allOccurrences = 0;
    //set denominator
    colorOccurrences.forEach((color, occurrence) {
      allOccurrences += occurrence;
    });

    colorOccurrences.forEach((color, occurrence) {
      double percent = occurrence / allOccurrences;
      radianLength = 2 * percent * math.pi;
      canvas.drawArc(
          myRect,
          radianStart,
          radianLength,
          false,
          Paint()
            ..color = color
            ..strokeWidth = strokeWidth
            ..style = PaintingStyle.stroke);
      radianStart += radianLength;
    });
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}


// class LotteryPreview extends StatelessWidget {
//   // const LotteryPreview({Key? key}) : super(key: key);
//
//   final String inputNumber;
//   final String inputAmount;
//
//   LotteryPreview({ required this.inputNumber, required this.inputAmount });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: DataTable(
//         columnSpacing: 100,
//         headingRowHeight: 0,
//         columns: const [
//           DataColumn(label: Text('')),
//           DataColumn(label: Text('')),
//         ], rows: [
//         DataRow(cells: [DataCell(Text(inputNumber)), DataCell(Text(inputAmount))]),
//       ],
//       ),
//     );
//   }
// }