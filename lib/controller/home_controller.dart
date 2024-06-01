import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/home_model.dart';
import '../view/screens/details_screen.dart';

class HomeController extends GetxController{

  @override
  void onInit() {
    getData();
    super.onInit();
  }


  bool isLoding = true;
  List<ProductData>? dataList= [];
  Future<void> getData()async{
    try {
      isLoding = true;
      final data = await rootBundle.loadString('assets/data.json');
      var jsonData = await jsonDecode(data) as List;
      dataList = jsonData.map((e) => ProductData.fromJson(e),).toList();
      isLoding = false;
    }catch(error){
      isLoding = true;
      print(error.toString());
    }
    isLoding = false;
    update();
  }

  /// onClickItemHomeScareen
  void onClickItemHomeScreen(ProductData model){
    Get.toNamed(DetailsScreen.routName, arguments: model);
  }



}