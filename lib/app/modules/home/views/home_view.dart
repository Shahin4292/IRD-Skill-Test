import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widget/text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ModifiedText(
              text: 'Location',
              color: Colors.black,
              size: 12,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                ModifiedText(
                  text: 'Jakarta',
                  color: Colors.black,
                  size: 20,
                  fontWeight: FontWeight.w500,
                ),
                Icon(Icons.arrow_downward)
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 15,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
