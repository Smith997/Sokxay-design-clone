import 'package:flutter/material.dart';
import 'package:sokxai_clone/AlertDialog/alert_radiobutton.dart';

class RefillPhone extends StatefulWidget {
  const RefillPhone({Key? key}) : super(key: key);

  @override
  State<RefillPhone> createState() => _RefillPhoneState();
}

class _RefillPhoneState extends State<RefillPhone> {

  String select = 'ເບີເຕີມເງິນ';
  List <String> listItem = [
    'ເບີເຕີມເງິນ', 'ເບີລາຍເດືອນ'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ເຕີມມູນຄ່າໂທ', style: TextStyle(
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
              label: Text('ເບິ່ງບິນ'),

          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.indigo),
        elevation: 0.8,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            children: [
              Container(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/laotelecom.jpg'),
                    Image.asset('assets/tplus.png'),
                    Image.asset('assets/etl.png'),
                    Image.asset('assets/unitel.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 25.0),
              const Text('ເລືອກປະເພດ ແລະ ປ້ອນເບີໂທລະສັບ', style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15.0,),

              Row(
                children: [
                  // Container(
                  //   alignment: Alignment.center,
                  //   child: DropdownButton(
                  //     value: valueChoose,
                  //     onChanged: (value){
                  //       setState(() {
                  //         valueChoose = value.toString();
                  //       });
                  //     },
                  //       items: listItem.map((item){
                  //         return DropdownMenuItem(
                  //           value: item,
                  //             child: Text(item),
                  //         );
                  //       }).toList(),
                  //   ),
                  // ),

                  // RadioListTile pop up
                  Container(
                    width: 135,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '20XXXXXXXX',
                        ),
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontSize: 18.0
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
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
