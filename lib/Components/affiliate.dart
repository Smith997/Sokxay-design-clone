import 'package:flutter/material.dart';

class AffiliatePage extends StatelessWidget {
  const AffiliatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              children: [
                TextSpan(text: 'Sokxay', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                )
                ),
                TextSpan(text: ' Plus', style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                )
                )
              ]
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.indigo),
        elevation: 0.8,
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 20.0),
              margin: const EdgeInsets.only(bottom: 18.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Color(0xffEF9A9A)),
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffFFCCBC),
                        Color(0xffFFE0B2)
                      ]
                  )
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                      'ແນະນຳໝູ່ໃຊ້ແອບ Sokxay Plus ໃນການຊື້ສິນຄ້າ ແລະ ບໍລິການເພື່ອຮັບເງິນ 0.5% - 5% ຂອງຍອດຂາຍ. ຮັບເງິນທຸກຕົ້ນເດືອນ',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),

                  const SizedBox(height: 10.0,),

                  const Text('ເລກຜູ້ແນະນຳຂອງທ່ານ:', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('59529905', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[900]
                    ),
                  )
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xffFFFDE7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text('ເງິນແນະນຳຈະເຂົ້າບັນຊີຂອງທ່ານເລກທີ່:'),
                      SizedBox(height: 5.0,),
                      Text('120-12-00-xxxxxx53-001', style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD84315)
                      ),),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ທ່ານແນະນຳທັງໝົດ', style: TextStyle(
                        fontSize: 16.0,
                      ),
                      ),
                      const SizedBox(height: 5.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('0', style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(' ຄົນ', style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('ເງີນແນະນຳລໍຖ້າຈ່າຍ', style: TextStyle(
                        fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      const Text('0', style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text('ເງິນແນະນຳທີ່ຈ່າຍໄປແລ້ວ', style: TextStyle(
                        fontSize: 16.0,
                      ),
                      ),
                      const SizedBox(height: 2.0),
                      Text('0', style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800]
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.indigo[800],
                      unselectedLabelColor: Colors. grey[800],
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(width: 8.0, color: Color(0xff283593)),
                      ),
                      tabs: const [
                    Tab(
                      child: Text('ຫວຍ', style: TextStyle(
                          fontSize: 16.0,
                          ),
                        ),
                      ),
                    Tab(child: Text('ຄ່າໂທ',style: TextStyle(
                        fontSize: 16.0,
                        ),
                      ),
                    )
                    ]
                  ),

                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 100, maxHeight: MediaQuery.of(context).size.height - 150
                    ),
                    child: const TabBarView(
                        children: [
                      Center(
                        child: Text('ບໍ່ມີລາຍການຊື້ຫວຍ', style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Center(child: Text('ບໍ່ມີລາຍການ',style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey
                          ),
                        ),
                      ),
                      ]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
