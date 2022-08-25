import 'package:agent_listing_app/constant/color.dart';
import 'package:agent_listing_app/controller/agent_data.dart';
import 'package:agent_listing_app/views/searchTextForm.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar_listview_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

late List<Agent_data> data;

class _MyHomePageState extends State<MyHomePage> {
  final globalKey = GlobalKey<ScaffoldState>();
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      body: SafeArea(
        child: Column(
          children: [
            const SearchTextFormFieldwithPrefix(),
            const SizedBox(
              height: 25,
            ),
            categoryBuilder(size),
            const Divider(
              thickness: 1,
              color: primaryColor,
            ),
            agentBuilder()
          ],
        ),
      ),
    );
  }
}
