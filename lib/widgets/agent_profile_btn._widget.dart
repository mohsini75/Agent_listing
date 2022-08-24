import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/agent_info_page.dart';

GestureDetector agentImageButton(Size size) {
  return GestureDetector(
    child: Container(
      height: size.height * .15,
      width: size.width * .3,
      child: Image.asset(
        "assets/images/istockphoto-517188688-612x612.jpg",
        fit: BoxFit.fill,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
    onTap: () => Get.to(() => AgentInfoPage(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 500)),
  );
}
