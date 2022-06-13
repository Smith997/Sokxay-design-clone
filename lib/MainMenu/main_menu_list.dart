import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {

  final List _MenuName =
      [
        'ຮ້ານຄ້າໂຊກໄຊ','ຕື່ມມູນຄ່າໂທ','ຊື້ຫວຍ','ປະຫວັດການຊື້','ໄຟຟ້າ','ນ້ຳປະປາ','ຄ່າທຳນຽມທາງ',
      ];

  final List<Color> bgColor = <Color>
      [
        Colors.redAccent, Color(0xffFFC107), Color(0xff00C853), Colors.indigo, Color(0xffFF8F00), Colors.blue, Colors.blueGrey,
      ];

  final List<IconData> bgIcon =
    [
      Icons.add_shopping_cart, Icons.add_call, Icons.work_outline_outlined , Icons.wysiwyg_outlined , Icons.wb_incandescent_outlined, Icons.waterfall_chart_outlined, Icons.add_road_outlined,
    ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _MenuName.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0
        ),
        itemBuilder: (context, index){
          return MenuItem(
            iconList: bgIcon[index],
            textTitle: _MenuName[index],
            backgroundColor: bgColor[index],
            onTap: () {
              if(index == 0){
                Navigator.pushNamed(context, '/storepage');
              }
              else if(index == 1){
                Navigator.pushNamed(context, '/refillphone');
              }
              else if(index == 2){
                Navigator.pushNamed(context, '/lotery');
              }
              else if(index==3){
                Navigator.pushNamed(context, '/history');
              }
              else if(index==4){
                Navigator.pushNamed(context, '/electricbill');
              }
              else if(index==5){
                Navigator.pushNamed(context, '/waterbill');
              }
              else if(index==6){
                Navigator.pushNamed(context, '/roadtax');
              }
            },
          );
        }
    );
  }
}

class MenuItem extends StatelessWidget {

  final String textTitle;
  final backgroundColor;
  final iconList;
  final Function onTap;

  MenuItem({required this.textTitle, this.backgroundColor, this.iconList, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { onTap(); },
      child: Container(
        // height: 80,
        // width: 100,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconList,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 5.0,),
            Text(textTitle,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}