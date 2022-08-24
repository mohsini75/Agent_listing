import 'package:agent_listing_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VendorCardPage extends StatelessWidget {
  const VendorCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Icon(
              Icons.arrow_back_outlined,
              color: primaryColor,
            ),
          ),
          onTap: () => Get.back(),
        ),
      ),
      body: Column(children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              getInitialsWords("TORONTO ISLAND"),
              style: const TextStyle(fontSize: 80, color: primaryColor),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "TORONTO ISLAND GROUP",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Container(
            height: size.height * 0.65,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UserInfoTile(Icons.person, "NAME"),
                UserInfoTile(Icons.phone, "PHONE"),
                UserInfoTile(Icons.mail, "EMAIL"),
                UserInfoTile(Icons.wordpress_outlined, "www.google.com"),
                UserInfoTile(Icons.info_outline_rounded,
                    "This is the dummy try of the page we are developing"),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget UserInfoTile(IconData icon, String data) {
    return ListTile(
      leading: Icon(
        icon,
        color: primaryColor,
      ),
      title: Text(
        data,
        style: const TextStyle(
          color: primaryColor,
        ),
      ),
    );
  }

  String getInitialsWords(company_name) {
    List<String> names = company_name.split(" ");
    String initials = "";
    int numWords = 2;

    if (numWords < names.length) {
      numWords = names.length;
    }
    for (var i = 0; i < numWords; i++) {
      initials += '${names[i][0]}';
    }
    return initials;
  }
}
