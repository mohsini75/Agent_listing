import 'package:agent_listing_app/constant/image.dart';
import 'package:agent_listing_app/views/agent_info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';
import '../widgets/agent_profile_btn._widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primaryColor,
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.white,
        //   child: const Icon(
        //     Icons.arrow_back_outlined,
        //     color: primaryColor,
        //   ),
        //   onPressed: () => Get.back(),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    imageAddress,
                    height: size.height * .4,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * .1,
                        vertical: size.width * .02),
                    child: Container(
                      height: size.height * .5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "ABOUT US",
                            style: textColor,
                          ),
                          const Text(
                            "------- OUR STORY -------",
                            style: textColor,
                          ),
                          const Text(
                            "lorem lorem loremlorem lorem loremlorem lorem loremlorem lorem loremlorem lorem loremlorem lorem loremlorem lorem loremlorem lorem lorem ",
                            style: textColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              agentImageButton(size),
                              agentImageButton(size),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text(
                                "Agent 1",
                                style: textColor,
                              ),
                              Text(
                                "Agent 2",
                                style: textColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
