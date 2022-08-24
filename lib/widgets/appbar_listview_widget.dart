import 'package:agent_listing_app/views/selected_category_result.dart';
import 'package:agent_listing_app/views/vendor_card_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

Expanded agentBuilder() {
  return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            //final agent = data[index];
            //print(agent);
            return Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
              child: Material(
                color: Colors.white,
                elevation: 10,
                shadowColor: primaryColor,
                child: GestureDetector(
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    leading: Icon(Icons.abc),
                    title: Text("title"),
                    subtitle: Text("subtitle"),
                  ),
                  onTap: () => Get.to(() => VendorCardPage(),
                      transition: Transition.fade,
                      duration: Duration(milliseconds: 500)),
                ),
              ),
            );
          }));
}

Container categoryBuilder(Size size) {
  return Container(
      height: size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(15.0),
          child: GestureDetector(
            child: Column(children: [
              Icon(
                Icons.home_work_outlined,
                size: 60,
              ),
              Text("Working"),
            ]),
            onTap: () {
              Get.to(() => SelectedCategoryPage(),
                  transition: Transition.leftToRight,
                  duration: Duration(milliseconds: 500));
            },
          ),
        ),
      ));
}

buildAppBar(BuildContext context, TextEditingController _controller) {
  Size size = MediaQuery.of(context).size;
  return AppBar(
    leading: const Icon(Icons.search),
    title: Padding(
      padding: EdgeInsets.only(right: size.width * 0.08),
      child: TextField(
        controller: _controller,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            fillColor: textFieldColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            filled: true,
            hintText: "Search...",
            hintStyle: const TextStyle(color: Colors.white)),
        //onChanged: ,
      ),
    ),
  );
}
