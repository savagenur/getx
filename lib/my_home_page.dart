import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/tap_controller.dart';
import 'package:getx/first_page.dart';
import 'package:getx/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    // TapController controller = Get.put(TapController());
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<TapController>(builder: (tapController) {
            return Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 45, 151, 155),
              ),
              child: Center(
                child: Text(
                  tapController.x.toString(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            );
          }),
          GestureDetector(
            onTap: () {
              controller.increaseX();
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 45, 151, 155),
              ),
              child: Center(
                child: Text(
                  'tap',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(
                () => FirstPage(),
                transition: Transition.rightToLeft,
              );
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 45, 151, 155),
              ),
              child: Center(
                child: Text(
                  'Go to the FirstPage',
                  
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=>SecondPage(),transition: Transition.rightToLeft);
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 45, 151, 155),
              ),
              child: Center(
                child: Text(
                  'Go to the SecondPage',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 45, 151, 155),
              ),
              child: Center(
                child: Text(
                  'tap',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
