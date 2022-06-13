import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ViewPoint extends StatefulWidget {
  const ViewPoint({Key? key}) : super(key: key);

  @override
  State<ViewPoint> createState() => _ViewPointState();
}

class _ViewPointState extends State<ViewPoint> {

  final List<String> TextTitle = ['ຕື່ມມູນຄ່າໂທ', 'ຕື່ມມູນຄ່າໂທ',];
  List <DateTime> dates = [DateTime.parse('2021-12-11'), DateTime.parse('2020-02-12'),];
  List PhoneNumber = [2099999999, 2099999999,];
  List TransId = [9999999, 9999999,];
  List ServiceName = ['unitel', 'etl',];
  List BillId = [1234567890, 1234567890,];
  List TotalAmount = [5000, 10000,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('ສະສົມຄະແນນ', style: TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
          Card(
            margin: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text('ທ່ານມີທັງໝົດ', style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0', style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800]
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text('ຄະແນນ', style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[800]
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),


            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: TextTitle.length,
                itemBuilder: (context, index){
                  return ViewpointItem(
                      dateTime: dates[index].toString(),
                    textTitle: TextTitle[index],
                    phoneNumber: PhoneNumber[index].toString(),
                    transactionId: TransId[index].toString(),
                    serviceName: ServiceName[index],
                    billId: BillId[index].toString(),
                    totalAmount: TotalAmount[index].toString(),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}


class ViewpointItem extends StatelessWidget {

  final String dateTime;
  final String textTitle;
  final phoneNumber;
  final transactionId;
  final String serviceName;
  final billId;
  final totalAmount;

  ViewpointItem({
    required this.dateTime, required this.textTitle, this.phoneNumber,
    this.transactionId, required this.serviceName,
    this.billId, this.totalAmount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dateTime),
                    Text(textTitle, style: const TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                    ),

                    Row(
                      children: [
                        Text(phoneNumber + ' | ', style: const TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text(transactionId + ' | ', style: const TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        ),
                        Text(serviceName, style: const TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text('ເລກອ້າງອີງ: ' + billId, style: const TextStyle(
                          fontSize: 12.0,
                        ),
                        ),
                      ],
                    )
                  ],
                ),

                Column(
                  children: [
                    Text(totalAmount, style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800]
                    ),
                    ),
                    Text('ຄະແນນ', style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800]
                    ),)
                  ],
                )
              ],
            ),
          ),
          const Divider(height: 0, color: Colors.grey),
        ],
      ),
    );
  }
}