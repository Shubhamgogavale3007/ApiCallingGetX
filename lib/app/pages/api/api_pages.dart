import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'api_controller.dart';

class ApiPage extends GetView<ApiPageController> {
  ApiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.orange),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                           Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoehaanIAqnPDNt1tTuZEwepHLZ9LZvCqwfA&usqp=CAU'),
                          Expanded(
                            child: Column(
                              children: [

                                    Text(controller.products[index].id.toString()),

                                /*   Obx(() =>  Text(controller.shubham.toString()),),*/

                                Text(controller.products[index].title.toString()),
                                Text(controller.products[index].brand.toString()),
                                Text(controller.products[index].category.toString()),
                                Text(controller.products[index].description.toString()),

                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
