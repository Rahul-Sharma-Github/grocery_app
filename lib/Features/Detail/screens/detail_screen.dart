import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Home/controllers/home_controller.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.imageUrl,
                height: 200, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(product.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(product.store, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            Text("\$${product.currentPrice}",
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(
              "\$${product.originalPrice}",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(height: 16),
            Text(
              "Discount: ${product.discount}% OFF",
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(height: 16),
            Obx(() => ElevatedButton(
                  onPressed: () {
                    product.isInCart.value = !product.isInCart.value;
                  },
                  child: Text(product.isInCart.value
                      ? 'REMOVE FROM CART'
                      : 'ADD TO CART'),
                )),
          ],
        ),
      ),
    );
  }
}
