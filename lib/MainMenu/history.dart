import 'package:flutter/material.dart';

import '../AlertDialog/alert_radiobutton.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  String selected = 'ຊື້ຫວຍ';
  List <String> historyItem = [
    'ຊື້ຫວຍ', 'ຕື່ມມູນຄ່າໂທ', 'ຊື້ສິນຄ້າ', 'ຊຳລະຄ່າໄຟຟ້າ', 'ຊຳລະຄ່ານ້ຳ', 'ຊຳລະຄ່າທຳນຽມທາງ', 'ຊຳລະພາສີທີ່ດິນ'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('ປະຫວັດການຊື້', style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900],
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.indigo),
        elevation: 0.8,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
            child: AlertRadioListile(
              addList: historyItem,
              selectedValue: selected,
              onChange: (String? value) {
                setState(() {
                  selected = value??selected;
                  // title = widget.addList.elementAt(index);
                  Navigator.of(context).pop();
                }
                );
              },
            ),
          ),

          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffd6d6d6)),
                      color: Colors.grey[50],
                    ),
                    child: TabBar(
                      labelColor: Colors.indigo[800],
                      unselectedLabelColor: Colors. grey[800],
                      indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(width: 8.0, color: Color(0xff283593)),
                      ),
                      tabs: const [
                        Tab(
                          child: Text('ຫວຍທັນສະໄໝ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Tab(
                          child: Text('ຜົນຫວຍທັນສະໄໝ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Tab(
                          child: Text('ຫວຍນາມສັດ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TabBarView(
                          children: [
                            Center(
                              child: Text('ບໍ່ມີລາຍການ', style: TextStyle(
                                fontSize: 18.0,
                              ),
                              ),
                            ),
                            Center(
                              child: Text('ບໍ່ມີລາຍການ', style: TextStyle(
                                fontSize: 18.0,
                                ),
                              ),
                            ),
                            Center(
                              child: Text('ບໍ່ມີລາຍການ', style: TextStyle(
                                fontSize: 18.0,
                                ),
                              ),
                            )
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
