import 'package:flutter/material.dart';

class ViewDetail extends StatelessWidget {
  const ViewDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('ວິທີແນະນຳໝູ່', style: TextStyle(
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: const Text(
          'ໃນໜ້າຊຳລະເງິນ ຈະມີຫ້ອງໃຫ້ປ້ອນເລກຜູ້ແນະນຳ. ໃຫ້ທ່າແນະນຳໝຸ່ຂອງທ່ານປ້ອນເລກທ່ານໃສ່ ທ່ານຈະໄດ້ຮັບເງິນ 0.5% - 5% ຂອງຈຳນວນທີ່ໝູ່ທ່ານຊື້ ໄປຈົນກວ່າໝູ່ທ່ານຈະປ່ຽນຜູ້ແນະນຳ',
          style: TextStyle(
            fontSize: 16.0
          ),
        ),
      ),
    );
  }
}
