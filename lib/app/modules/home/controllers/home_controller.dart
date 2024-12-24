import 'dart:ui';

import 'package:get/get.dart';

import '../../../model/image_item_model.dart';
import '../../../utils/app_assets.dart';

class HomeController extends GetxController {
  final List<Map<String, String>> imageList = [
    {
      "url": AppAssets.dreamsvileHouse,
      "title": "Image 1",
      "description": "This is the description for Image 1"
    },
    {
      "url": AppAssets.dreamsvileHouse,
      "title": "Image 2",
      "description": "This is the description for Image 2"
    },
    {
      "url": AppAssets.dreamsvileHouse,
      "title": "Image 3",
      "description": "This is the description for Image 3"
    },
    {
      "url": AppAssets.dreamsvileHouse,
      "title": "Image 4",
      "description": "This is the description for Image 4"
    },
    {
      "url": AppAssets.dreamsvileHouse,
      "title": "Image 5",
      "description": "This is the description for Image 5"
    },
  ];
  var selectedIndex = 0.obs;
  final List<String> buttonName = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'Corridor',
  ];

// List<ImageItem> imageList = [
//   ImageItem(
//     name: 'Documents',
//     color: const Color(0xFFFFF7EB),
//     icon: AppAssets.dreamsvileHouse,
//   ),
//   ImageItem(
//     name: 'ID Card',
//     color: const Color(0xFFFBF3F2),
//     icon: AppAssets.dreamsvileHouse,
//   ),
//   ImageItem(
//     name: 'QR Code',
//     color: const Color(0xFFFFF1F1),
//     icon: AppAssets.dreamsvileHouse,
//   ),
//   ImageItem(
//     name: 'Bar Code',
//     color: const Color(0xFFEEF0FD),
//     icon: AppAssets.dreamsvileHouse,
//   ),
// ];
}
