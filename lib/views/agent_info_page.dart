import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';
import '../constant/image.dart';

class AgentInfoPage extends StatelessWidget {
  const AgentInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primaryColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.arrow_back_outlined,
            color: primaryColor,
          ),
          onPressed: () => Get.back(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: Stack(children: [
          Column(children: [
            Image.asset(
              imageAddress,
              height: size.height * .4,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Container(
                child: Column(
                  children: [
                    const Text(
                      "AGENT AGENT",
                      style: textColor,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "lorem loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem",
                      style: textColor,
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Positioned(
              top: size.height * .24,
              left: size.width * .3,
              child: Container(
                  height: 260,
                  width: 220,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(imageAddress))),
        ]));
  }
}
