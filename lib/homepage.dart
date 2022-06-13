import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sokxai_clone/AlertDialog/alertdialog.dart';
import 'package:sokxai_clone/AlertDialog/alertdialog_singlebutton.dart';
import 'package:sokxai_clone/MainMenu/main_menu_list.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
            child: Column(
              children: [

                // SECTION 1
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // LOGO IMAGE
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, right: 10.0, left: 2.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.blue,
                        child: Image.asset(
                            'assets/sokxai_logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        height: 82,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xFF3949AB)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [

                                 // PROFILE VIEW BUTTON
                                 GestureDetector(
                                   onTap: (){Navigator.pushNamed(context, '/profile');},
                                   child: Row(
                                     children: const [
                                       CircleAvatar(
                                         backgroundImage: AssetImage('assets/avatar.jpg'),
                                         radius: 16.0,
                                       ),
                                       SizedBox(width: 8,),
                                       Text('Smith',
                                         style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                     ]
                                   ),
                                 ),

                                 // LOG OUT BUTTON
                                 GestureDetector(
                                   onTap: (){
                                     showDialog(
                                       barrierDismissible: false,
                                         context: context,
                                         builder: (context){
                                           return ShowAlertDialog(
                                             height: 220,
                                             cancelButton: () => Navigator.pop(context),
                                             submitButton: () {
                                               if (Platform.isAndroid) {
                                                 SystemNavigator.pop();
                                               } else if (Platform.isIOS) {
                                                 exit(0);
                                               }
                                             },
                                           );
                                         },
                                     );
                                   },
                                   child: Container(
                                     padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                                     decoration: BoxDecoration(
                                         color: Colors.grey[200],
                                       borderRadius: BorderRadius.circular(15.0),
                                       border: Border.all(color: Colors.grey)
                                     ),
                                     child: const Text(
                                       'ອອກຈາກລະບົບ',
                                       style: TextStyle(
                                         fontSize: 12,
                                       ),
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ),

                           Container(
                             decoration: BoxDecoration(
                                 color: Colors.indigo[600],
                                 borderRadius: const BorderRadius.only(
                                 bottomLeft: Radius.circular(8.0),
                                   bottomRight: Radius.circular(8.0)
                               )
                             ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   const Text(
                                     'ທ່ານມີ 0 ຄະແນນ',
                                     style: TextStyle(
                                         color: Colors.white,
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),

                                   // VIEW POINT BUTTON
                                   GestureDetector(
                                     onTap: (){Navigator.pushNamed(context, '/viewpoint');},
                                     child: Container(
                                       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                                       decoration: BoxDecoration(
                                           color: Colors.grey[200],
                                           borderRadius: BorderRadius.circular(15.0),
                                         gradient: const LinearGradient(
                                           begin: Alignment.centerLeft,
                                           end: Alignment.centerRight,
                                           colors: [
                                             Colors.red,
                                             Color(0xffFFBC02D)
                                           ]
                                         )
                                       ),
                                       child: const Text(
                                         'ເບິ່ງຄະແນນ',
                                         style: TextStyle(
                                           fontSize: 12,
                                         ),
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           )
                         ],
                       ),
                      ),
                    )
                  ],
                ),

                // SECTION 2 (SECOND CARD)
                Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
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

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                'ແນະນຳໝູ່ຊື້ສິນຄ້າ ແລະ ບໍລິການເພື່ອຮັບເງິນ 0.5% - 5% ຂອງຍອດຂາຍ'
                            ),

                            const SizedBox(height: 10.0,),

                            const Text(
                                'ເລກຜູ້ແນະນຳຂອງທ່ານ:',
                              style: TextStyle(
                                fontSize: 16,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('59529905',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.red[900]
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          children: [

                            // CHANGE LANGUAGE BUTTON
                            GestureDetector(
                              onTap: (){
                                showDialog(
                                  barrierDismissible: false,
                                    context: context,
                                    builder: (context){
                                      return ShowDialogWithSingleButton(
                                          submitButton: () => Navigator.pop(context),
                                          icon: Icons.announcement_outlined,
                                          content: 'ລະບົບພາສາອື່ນຍັງບໍ່ພ້ອມໃຊ້ງານ'
                                      );
                                    },
                                );
                              },

                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                margin: const EdgeInsets.only(bottom: 8.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      'ປ່ຽນພາສາ',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 8.0,),
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/america.jpg'),
                                      radius: 8.0,
                                    )
                                  ],
                                )
                              ),
                            ),

                            // VIEW DETAIL BUTTON
                            GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/viewdetail');},
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                                margin: const EdgeInsets.only(bottom: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(color: Color(0xffFF8A65), width: 2.0),
                                ),
                                child: const Text(
                                  'ເບິ່ງລາຍລະອຽດ',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),

                            // VIEW AFFILIATE BUTTON
                            GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/affiliate');},
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2,
                                        offset: Offset(0, 2)
                                      )
                                    ],
                                    gradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.red,
                                          Color(0xffFFBC02D)
                                        ]
                                    )
                                ),
                                child: const Text(
                                  'ເບິ່ງລາຍຮັບ',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //SECTION 3 Main menu list
                MenuList(),

                // SECTION 4 policy and contact on footer
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1)
                            )
                          ]
                        ),
                        child: const Text(
                          'ນະໂຍບາຍ ແລະ ເງື່ອນໄຂ Sokxay Plus',
                        ),
                      ),
                      const SizedBox(height: 18.0),
                      const Text('ເບີໂທຕິດຕໍ່: 020 96774524')
                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}



