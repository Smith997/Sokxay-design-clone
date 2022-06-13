import 'package:flutter/material.dart';
import 'package:sokxai_clone/AlertDialog/alert_radiobutton.dart';

class RoadTax extends StatefulWidget {
  const RoadTax({Key? key}) : super(key: key);

  @override
  State<RoadTax> createState() => _RoadTaxState();
}

class _RoadTaxState extends State<RoadTax> {

  String selectProvince = 'ກຳແພງນະຄອນ';
  List <String> listProvince = [
    'ກຳແພງນະຄອນ', 'ຫຼວງພະບາງ', 'ສະຫວັນນະເຂດ', 'ຈຳປາສັກ', 'ຜົ້ງສາລີ', 'ອຸດົມໄຊ', 'ບໍ່ແກ້ວ', 'ຫຼວງນ້ຳທາ',
    'ຫົວພັນ', 'ໄຊຍະບູລີ', 'ຊຽງຂວາງ', 'ແຂວງວຽງຈັນ', 'ບໍລິຄຳໄຊ', 'ຄຳມ່ວນ', 'ສາລະວັນ', 'ເຊກອງ', 'ອັດຕະປື',
    'ໄຊສົມບູນ', 'ສາມລ່ຽມທອງຄຳ', 'ເຂດບໍ່ເຕັນແດນຄຳ',
  ];

  String selectLicencePlate = 'ເອກະຊົນ';
  List <String> listLicencePlate = [
    'ປກສ', 'ເອກະຊົນ', 'ບໍລິສັດ 1%', 'ບໍລິສັດ 100%', 'ເອກະຊົນ ຕ່າງດ້າວ', 'ອົງການຈັດຕັ້ງສາກົນ', 'ລັດບໍລິຫານ', 'ຊົ່ວຄາວ', 'ກທ'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຄ່າທຳນຽມທາງ', style: TextStyle(
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
        iconTheme: IconThemeData(color: Colors.indigo),
        elevation: 0.8,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15.0),
            const Text('ປ້ອນປ້າຍລົດ, ເລືອກແຂວງ ແລະ ເລືອກປະເພດ', style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ປ້າຍລົດ',
                      ),
                      // keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 18.0
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    width: MediaQuery.of(context).size.width,
                    child: AlertRadioListile(
                      addList: listProvince,
                      selectedValue: selectProvince,
                      onChange: (String? value) {
                        setState(() {
                          selectProvince = value??selectProvince;
                          // title = widget.addList.elementAt(index);
                          Navigator.of(context).pop();
                        }
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: AlertRadioListile(
                      addList: listLicencePlate,
                      selectedValue: selectLicencePlate,
                      onChange: (String? value) {
                        setState(() {
                          selectLicencePlate = value??selectLicencePlate;
                          // title = widget.addList.elementAt(index);
                          Navigator.of(context).pop();
                        }
                        );
                      },
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
