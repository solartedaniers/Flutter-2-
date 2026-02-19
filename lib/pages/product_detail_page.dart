import 'package:flutter/material.dart';
import '../models/product.dart';

// Stateless porque solo muestra información
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.image, height: 200),
            Text(product.description),
            Text("\$${product.price}", style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onAdd(product);
                Navigator.pop(context);
              },
              child: const Text("Agregar al carrito"),
            )
          ],
        ),
      ),
    );
  }
}
