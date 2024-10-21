// Controller for managing product data and state
import 'package:get/get.dart';

class ProductController extends GetxController {
  // List of products as an observable list
  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Adding sample products
    productList.addAll([
      Product(
        name: "Britannia Eggless Cake",
        store: "Mr. India Grocers",
        currentPrice: 2.99,
        originalPrice: 4.99,
        discount: 40,
        imageUrl:
            "https://t3.ftcdn.net/jpg/05/06/18/48/360_F_506184891_GDL7vlfqeBRSALShhxF6wx43lG7r54Mo.jpg",
        isInCart: false.obs,
      ),
      Product(
        name: "Thums Up / Fanta / Limca",
        store: "Mr. India Grocers",
        currentPrice: 4.49,
        originalPrice: 4.99,
        discount: 10,
        imageUrl:
            "https://t3.ftcdn.net/jpg/05/06/18/48/360_F_506184891_GDL7vlfqeBRSALShhxF6wx43lG7r54Mo.jpg",
        isInCart: true.obs,
      ),
      Product(
        name: "Harroz Basmati Rice 8lb",
        store: "Mr. India Grocers",
        currentPrice: 9.99,
        originalPrice: 14.99,
        discount: 33,
        imageUrl:
            "https://t3.ftcdn.net/jpg/05/06/18/48/360_F_506184891_GDL7vlfqeBRSALShhxF6wx43lG7r54Mo.jpg",
        isInCart: false.obs,
      ),
      Product(
        name: "Nature Gift Basmati Rice",
        store: "Mr. India Grocers",
        currentPrice: 9.99,
        originalPrice: 13.99,
        discount: 29,
        imageUrl:
            "https://t3.ftcdn.net/jpg/05/06/18/48/360_F_506184891_GDL7vlfqeBRSALShhxF6wx43lG7r54Mo.jpg",
        isInCart: false.obs,
      ),
      // Add more products here...
    ]);
  }

  // Method to toggle "Add to Cart" / "In Cart"
  void toggleCart(Product product) {
    product.isInCart.value = !product.isInCart.value;
  }
}

// Product Model
class Product {
  final String name;
  final String store;
  final double currentPrice;
  final double originalPrice;
  final int discount;
  final String imageUrl;
  final RxBool isInCart; // RxBool for reactive state

  Product({
    required this.name,
    required this.store,
    required this.currentPrice,
    required this.originalPrice,
    required this.discount,
    required this.imageUrl,
    required this.isInCart,
  });
}
