import 'package:agent_listing_app/views/selected_category_result.dart';
import 'package:agent_listing_app/views/vendor_card_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

Widget agentBuilder() {
  return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            //final agent = data[index];
            //print(agent);
            return Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
              child: Card(
                color: Colors.white,
                elevation: 7,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: primaryColor,
                child: GestureDetector(
                  child: ListTile(
                    leading: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "T I",
                            style: TextStyle(fontSize: 22, color: primaryColor),
                          )),
                    ),
                    title: Text("Torento Island"),
                    subtitle: Text("This is description of island"),
                  ),
                  onTap: () => Get.to(() => const VendorCardPage(),
                      transition: Transition.fade,
                      duration: const Duration(milliseconds: 500)),
                ),
              ),
            );
          }));
}

Container categoryBuilder(Size size) {
  return Container(
      height: size.height * 0.13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            child: Container(
              width: 70,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(children: const [
                    Icon(
                      Icons.home_work_outlined,
                      size: 60,
                    ),
                    Text(
                      "Working",
                    ),
                  ]),
                ),
              ),
            ),
            onTap: () {
              Get.to(() => const SelectedCategoryPage(),
                  transition: Transition.leftToRight,
                  duration: const Duration(milliseconds: 500));
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
      padding: EdgeInsets.only(right: size.width * 0.09, top: 5),
      child: SizedBox(
        height: 40,
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
    ),
  );
}
