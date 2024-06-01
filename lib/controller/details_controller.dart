import 'package:get/get.dart';
import 'package:shop_app_fackdata/view/screens/cart_screen.dart';
import '../model/home_model.dart';

class DetailsController extends GetxController{
  ProductData argumentData = Get.arguments;

  void addToCartFunction(){
    Get.toNamed(CartScreen.routName , arguments:  argumentData);
  }




}