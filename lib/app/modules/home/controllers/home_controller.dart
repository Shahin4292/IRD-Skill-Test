import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  final List<String> buttonName = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Corridor',
  ];
}
