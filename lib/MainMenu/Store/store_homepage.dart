import 'package:flutter/material.dart';
import 'package:sokxai_clone/MainMenu/Store/store_product.dart';
import 'package:sokxai_clone/MainMenu/Store/store_view_detail.dart';

class StoreHomepage extends StatefulWidget {
  const StoreHomepage({Key? key}) : super(key: key);

  @override
  State<StoreHomepage> createState() => _StoreHomepageState();
}

class _StoreHomepageState extends State<StoreHomepage> {

  List ImageIcon = [
    'assets/imageicons/monitor.png', 'assets/imageicons/laundry.png', 'assets/imageicons/vacuum.png',
    'assets/imageicons/microwave.png', 'assets/imageicons/theater.png', 'assets/imageicons/fridge.png',
    'assets/imageicons/air-conditioner.png', 'assets/imageicons/smartphone.png',
  ];

  List TextTitle = [
    'ໂທລະທັດ', 'ຕູ້ຊັກເຄື່ອງ', 'ເຄື່ອງດູດຝຸ່ນ', 'ໄມໂຄເວບ', 'ໂຮມເທຍເຕີ້', 'ຕູ້ເຢັນ', 'ແອ', 'ໂທລະສັບ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('ຮ້ານຄ້າໂຊກໄຊ', style: TextStyle(
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffe0e0e0)),
                color: Colors.grey[100],
              ),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ImageIcon.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 10.0),
                  itemBuilder: (context, index){
                    return StoreListCategory(
                      imageIcon: ImageIcon[index],
                        textTitle: TextTitle[index]
                    );
                  },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffe0e0e0)),
                  color: Colors.grey[100],
                ),
                child: Center(
                  child: Text('ສິນຄ້າແນະນຳ', style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[800]
                    ),
                  ),
                ),
              ),
            ),


            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffe0e0e0)),
                color: Colors.grey[200],
              ),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/3.3,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0
                ),

                itemBuilder: (context, index){
                  return StoreListItem(
                    product: products[index],
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => StoreViewDetail(product: products[index])
                        )
                      );
                    },

                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class StoreListCategory extends StatelessWidget {
  final imageIcon;
  final String textTitle;

  StoreListCategory({ this.imageIcon, required this.textTitle });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(10.0) ,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(1, 2),
                  )
                ]
            ),
            child: ImageIcon(AssetImage(imageIcon), size: 40.0, color: Colors.indigo[800],)
        ),

        const SizedBox(height: 6.0),

        Text(textTitle, style: TextStyle(
            color: Colors.indigo[800]
        ),)
      ],
    );
  }
}


class StoreListItem extends StatelessWidget {

  final Product product;
  final Function press;

  StoreListItem({ required this.product, required this.press });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { press(); },
      child: Container(
        // color: Colors.red,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(0, 1),
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(product.image, fit: BoxFit.contain,),
              // child: Hero(
              //     tag: "${product.id}",
              //   child: ImageIcon(AssetImage(product.image), size: 40.0, color: Colors.indigo[800],),
              // ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title, style: const TextStyle(
                  ),
                  ),
                  const SizedBox(height: 5.0),
                  Text('${product.stock} ຕົວເລືອກ', style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600]
                  ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('${product.price}', style: const TextStyle(
                          color: Colors.red
                      ),
                      ),
                      Text(' ກີບ', style: TextStyle(
                          color: Colors.grey[800]
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}