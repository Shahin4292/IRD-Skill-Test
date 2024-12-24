import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();
  var selectedIndex = 0.obs;
  final List<String> buttonName = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Corridor',
  ];
}
