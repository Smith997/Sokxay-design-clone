import 'package:flutter/material.dart';

class AlertRadioListile extends StatefulWidget {

  List <String> addList = [];
  String selectedValue = '';
  final onChange;

  AlertRadioListile({Key? key, required this.addList, required this.selectedValue, required this.onChange}) : super(key: key,);

  @override
  State<AlertRadioListile> createState() => _AlertRadioListileState();
}

class _AlertRadioListileState extends State<AlertRadioListile> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(
          context: context,
          builder: (context){
            return AlertDialog(// Wrap with StateFulBuilder if use for loop
              content: SingleChildScrollView (
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: widget.addList.map((e) => RadioListTile<String>(
                  title: Text(e,
                  style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black),
                ),
                value: e,
                groupValue: widget.selectedValue,
                onChanged: widget.onChange,
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  ).toList(),

                  // children: [
                  //
                  //   // for(var i in _list)
                  //   //   RadioListTile(
                  //   //     value: i,
                  //   //     groupValue: groupValue,
                  //   //     onChanged: (newValue){
                  //   //       setState((){
                  //   //         groupValue = newValue.toString();
                  //   //         title = i;
                  //   //         Navigator.of(context).pop();
                  //   //       });
                  //   //     },
                  //   //     activeColor: Colors.blue,
                  //   //     controlAffinity: ListTileControlAffinity.trailing,
                  //   //     title: Text(i),
                  //   //   ),
                  //   // SizedBox(height: 10.0,),
                  //   //
                  //   // Text('I chose $title')
                  //
                  //
                  //   ListView.builder(
                  //     padding: EdgeInsets.all(0),
                  //     // controller: scrollController2,
                  //     shrinkWrap: true,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     itemCount: widget.addList.length,
                  //     itemBuilder: (context, index) {
                  //       var tt = widget.addList[index];
                  //       return RadioListTile<String>(
                  //         title: Text(widget.addList.elementAt(index),
                  //           style: TextStyle(
                  //             fontSize: 18.0,
                  //               color: Colors.black),
                  //         ),
                  //         value: tt,
                  //         groupValue: widget.selectedValue,
                  //         onChanged: widget.onChange,
                  //         // onChanged: (String? value) {
                  //         //   setState(() {
                  //         //     widget.selectedValue = value??widget.selectedValue;
                  //         //     // title = widget.addList.elementAt(index);
                  //         //     Navigator.of(context).pop();
                  //         //     if(index==0){
                  //         //       // Navigator.pushNamed(context, '/profile');
                  //         //       }
                  //         //     }
                  //         //   );
                  //         // },
                  //         activeColor: Colors.green,
                  //         controlAffinity: ListTileControlAffinity.trailing,
                  //       );
                  //     },
                  //   ),
                  // ],

                ),
              ),
            );
          },
        );
      },

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        margin: EdgeInsets.only(right: 3.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(''),
            Text(widget.selectedValue, style: const TextStyle(
              fontSize: 16,
              color: Colors.black
              ),
            ),
            const Icon(Icons.arrow_drop_down_outlined, size: 30),
          ],
        ),
      ),
    );
  }
}

// class AlertRadioButton extends StatefulWidget {
//    const AlertRadioButton({Key? key}) : super(key: key);
//
//   @override
//   State<AlertRadioButton> createState() => _AlertRadioButtonState();
// }
//
// class _AlertRadioButtonState extends State<AlertRadioButton> {

//   String myListType = '';
//
//   List<String> myList = [
//     'Phone', 'Card', 'Smith'
//   ];
//
//   void setValue (value) {
//     setState(() {
//       myListType = value.toString();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:
//             // myList.map ((e) {
//             //   return RadioListTile(
//             //     value: e,
//             //     groupValue: myListType,
//             //     onChanged: setValue,
//             //     activeColor: Colors.blue,
//             //     controlAffinity: ListTileControlAffinity.trailing,
//             //     title: Text(e),
//             //   );
//             // }).toList(),
//
//           [
//             for(var i in myList)
//               RadioListTile(
//                   value: i,
//                   groupValue: myListType,
//                   onChanged: setValue,
//                 activeColor: Colors.blue,
//                 controlAffinity: ListTileControlAffinity.trailing,
//                 title: Text(i),
//               ),
//             SizedBox(height: 10.0,),
//
//             Text('I chose $myListType')
//
//           ],
//         ),
//       ),
//     );
//   }
// }

