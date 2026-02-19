import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  final Function(Product) onAdd;

  const ProductDetailPage({
    super.key,
    required this.product,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.image, height: 260, fit: BoxFit.cover),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(product.description,
                      style: const TextStyle(
                          fontSize: 16, color: Colors.grey)),
                  const SizedBox(height: 20),
                  Text("\$${product.price}",
                      style: const TextStyle(
                          fontSize: 28,
                          color: Color(0xFF4A00E0),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        backgroundColor: const Color(0xFF4A00E0),
                      ),
                      onPressed: () {
                        onAdd(product);
                        Navigator.pop(context);
                      },
                      child: const Text("Agregar al carrito",
                          style: TextStyle(fontSize: 18)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
