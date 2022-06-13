import 'package:flutter/material.dart';
import 'package:sokxai_clone/MainMenu/Store/store_product.dart';

class StoreViewDetail extends StatelessWidget {

  final Product product;

  StoreViewDetail({ required this.product });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('ລາຍລະອຽດສິນຄ້າ', style: TextStyle(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey[50],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 1)
                    )
                  ]
                ),
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(product.image),
                    Text(product.title, style: const TextStyle(
                      fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    Text('${product.price} ກີບ', style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.red
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.red,
                          Color(0xffFFBC02D)
                        ]
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('ສົນໃຈສັ່ງຊື້', style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                    ),
                    ),
                  ],
                ),
              ),

              Text(product.description,
                style: const TextStyle(
                  fontSize: 18.0
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
