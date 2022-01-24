import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //no need context,this is the beauty of Getx//
            Get.defaultDialog(
              //also this defaultDialog is customizable. Lets custom now//
            title: 'The Title',
            titleStyle: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),
            middleText: 'This is middleText area',
            middleTextStyle: const TextStyle(fontSize: 18,color: Colors.blue),
            backgroundColor: Colors.purple,
            // radius: 100.0

            //the middleText is highly customizable.Lets try//
            // content: Row(
            //   children: const [
            //     SizedBox(width: 20),
            //     CircularProgressIndicator(),
            //     SizedBox(width: 20,),
            //     Expanded(child: Text('This is new middleText of the dialog'))
            //   ],
            // ),
            
            //now try default cancel and confirm action//
            textCancel: 'Cancel', //this is default textstyle//
            cancelTextColor: Colors.white,
            textConfirm: 'Confirm',
            confirmTextColor: Colors.blue,
            onCancel: (){},
            onConfirm: (){},
            //Colors of the buttons of cancel and confirm can be custom//
            // buttonColor: Colors.green,
            //possible to override the default cancel and confirm button text and style.//
            // cancel: Text('Cncl',textScaleFactor: 1.2,
            // style: TextStyle(
            //   color: Colors.white,
            // ),
            // ),
            // confirm: Text('Cfrm'),

            // actions: [
            //   //custom actions also be used//
            //   IconButton(
            //     onPressed: (){
            //       Get.back();
            //     }, 
            //     icon: const Icon(
            //       Icons.cancel,
            //       color: Colors.white,
            //       size: 20,
            //     ),
            //     ),
            //     const SizedBox(width: 20,),
            //   IconButton(
            //     onPressed: (){},
            //     icon: const Icon(
            //       Icons.send,
            //       color: Colors.white,
            //       size: 20,
            //     ),
                
            //     ),
            // ],
            barrierDismissible: true,
            //click outside of the dialogBox-default value is true. try false//
            );
          }, 
          child: const Text(
            'Show Dialog',
            textScaleFactor: 1.2,
            textAlign: TextAlign.center,
            )
          ),
      ),
    );
  }
}