import 'package:flutter/material.dart';
import '../data/sample_products.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_page.dart';
import 'cart_page.dart';

// Stateful porque maneja carrito dinámico
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<Product> products = SampleProducts.getProducts();
  final List<Product> cart = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }

  void goToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CartPage(cart: cart),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: goToCart,
          )
        ],
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final product = products[index];

          return ProductCard(
            product: product,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailPage(
                    product: product,
                    onAdd: addToCart,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
