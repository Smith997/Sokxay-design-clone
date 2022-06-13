import 'package:flutter/material.dart';
import 'package:sokxai_clone/AlertDialog/alert_radiobutton.dart';

class WaterBill extends StatefulWidget {
  const WaterBill({Key? key}) : super(key: key);

  @override
  State<WaterBill> createState() => _WaterBillState();
}

class _WaterBillState extends State<WaterBill> {

  String select = 'ນະຄອນຫຼວງວຽງຈັນ';
  List <String> listItem = [ 'ນະຄອນຫຼວງວຽງຈັນ',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຊຳລະຄ່ານ້ຳ', style: TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 10.0),
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(0, 1)
                    )
                  ],
                  color: Colors.grey[50]
              ),

              child: Image.asset('assets/waterbill.jpg'),

            ),
            const Text('ເລືອກແຂວງ ແລະ ປ້ອນເລກບັນຊີຜູ້ໃຊ້ນ້ຳ', style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            const SizedBox(height: 10.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    child: AlertRadioListile(
                      addList: listItem,
                      selectedValue: select,
                      onChange: (String? value) {
                        setState(() {
                          select = value??select;
                          // title = widget.addList.elementAt(index);
                          Navigator.of(context).pop();
                        }
                        );
                      },
                    ),
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ເລກບັນຊີຜູ້ໃຊ້ນ້ຳ',
                        ),
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                            fontSize: 18.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 4, height: 40.0,)
          ],
        ),
      ),

      bottomNavigationBar: Material(
        color: Colors.blue[800],
        child: InkWell(
          onTap: () { },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(' '),
                  Text('ຕໍ່ໄປ',
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
    );

  }
}
