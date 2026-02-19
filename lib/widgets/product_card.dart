import 'package:flutter/material.dart';
import '../models/product.dart';

// Widget SIN estado porque no cambia
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 5)
          ],
        ),
        child: Column(
          children: [
            Image.network(product.image, height: 120),
            Text(product.name, style: const TextStyle(fontSize: 18)),
            Text("\$${product.price}"),
          ],
        ),
      ),
    );
  }
}
