import 'package:api_calling_getx/app/pages/api/api_pages.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../utilis/binding.dart';
import 'approutes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.api,
      page: () => ApiPage(),
      binding: CommonBinding(),
    ),

  ];
}
