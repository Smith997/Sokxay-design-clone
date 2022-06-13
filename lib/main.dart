import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sokxai_clone/Components/view_detail.dart';
import 'package:sokxai_clone/MainMenu/electric_bill.dart';
import 'package:sokxai_clone/MainMenu/history.dart';
import 'package:sokxai_clone/MainMenu/Lottery/lottery_homepage.dart';
import 'package:sokxai_clone/MainMenu/road_tax.dart';
import 'package:sokxai_clone/MainMenu/Store/store_homepage.dart';
import 'package:sokxai_clone/MainMenu/water_bill.dart';

import 'homepage.dart';
import 'Components/profile.dart';
import 'Components/affiliate.dart';
import 'Components/view_point.dart';
import 'Components/view_detail.dart';
import 'MainMenu/refill_phone.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.grey[400],
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Soksay Plus',
    initialRoute: '/home',
    routes: {
      '/home' : (context) => HomePage(),
      '/profile' : (context) => Profile(),
      '/affiliate' : (context) => AffiliatePage(),
      '/viewpoint' : (context) => ViewPoint(),
      '/viewdetail' : (context) => ViewDetail(),
      '/storepage' : (context) => StoreHomepage(),
      '/refillphone' : (context) => RefillPhone(),
      '/lotery' : (context) => LotteryPage(),
      '/history' : (context) => History(),
      '/electricbill' : (context) => ElectricBill(),
      '/waterbill' : (context) => WaterBill(),
      '/roadtax' : (context) => RoadTax(),
    },
  ),
  );
}


