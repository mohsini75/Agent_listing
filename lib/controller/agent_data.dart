import 'dart:io';

import 'package:agent_listing_app/model/agent_model.dart';
import 'package:get/get.dart';

class Agent_data extends GetxController {
  List<Agent_model> data = [
    Agent_model(
        id: "1",
        companyName: "stella.co",
        category: "architect",
        contactName: "1234567",
        phone: "+12332112",
        publish: true,
        website: "www.google.com",
        email: "john@cui.com",
        info: "this is a software company",
        imageLogo: File("")),
    Agent_model(
        id: "2",
        companyName: "devoops.co",
        category: "developers",
        contactName: "1234567",
        phone: "+12332112",
        publish: true,
        website: "www.google.com",
        email: "john@cui.com",
        info: "this is a software company",
        imageLogo: File("")),
    Agent_model(
        id: "3",
        companyName: "bellacioa.co",
        category: "heist",
        contactName: "1234567",
        phone: "+12332112",
        publish: true,
        website: "www.google.com",
        email: "john@cui.com",
        info: "this is a software company",
        imageLogo: File("")),
  ];

  List<Agent_model> get agentsInfo {
    return [...data];
  }

  Agent_model findCategoryById(int id) {
    return data.firstWhere((element) => element.id == id);
  }
}
