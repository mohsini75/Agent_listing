import 'package:agent_listing_app/views/searchTextForm.dart';
import 'package:agent_listing_app/widgets/appbar_listview_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectedCategoryPage extends StatelessWidget {
  const SelectedCategoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchTextFormFieldwithPrefix(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: GestureDetector(
                    child: Card(
                      child: const Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onTap: () => Get.back(),
                  ),
                ),
                const Icon(
                  Icons.support_agent_outlined,
                  size: 160,
                )
              ],
            ),
            agentBuilder(),
          ],
        ),
      ),
    );
  }
}
