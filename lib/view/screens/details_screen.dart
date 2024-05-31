import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app_fackdata/controller/home_controller.dart';
import 'package:shop_app_fackdata/data.dart';

class DetailsScreen extends StatelessWidget {
  static String routName = '/detailsScreen';

  @override
  Widget build(BuildContext context) {
    // int productId = ModalRoute.of(context)!.settings.arguments as int;
    // var selectedProduct = fakeData.firstWhere(
    //   (element) => element!['id'] == productId,
    // );
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: MediaQuery.of(context).size.height / 2.2,
                  width: double.infinity,
                  child: Image.asset('assets/images/Espresso.png'),
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BEST COFFEE',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            letterSpacing: 1.5),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cold Coffee',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.grey.shade600, width: 2)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.remove),
                                Text('0'),
                                Icon(Icons.add),
                              ],
                            ),
                          ),
                          Text(
                            '\$ 30',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      /// Discraption
                      Text(
                        'Coffee is a major source of antioxidants in the diet. it has many health benefits',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Volume: 60 ml',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// add to cart button
                  addToCartButton(context),
                  addToFavButton(context, controller)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// add to cart widget
  Widget addToCartButton(context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Add To Cart',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      );

  /// fav widget
  Widget addToFavButton(context, HomeController controller) => GestureDetector(
        onTap: () {
          // controller.setFavoriteMeals(controller.dataList!.id);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.favorite_border,
          ),
        ),
      );
}
