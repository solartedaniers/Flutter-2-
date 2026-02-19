import 'package:flutter/material.dart';
import '../models/product.dart';

// Stateful porque cambia en ejecución
class CartPage extends StatefulWidget {
  final List<Product> cart;

  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  double getTotal() {
    double total = 0;
    for (var product in widget.cart) {
      total += product.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carrito")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (_, index) {
                final product = widget.cart[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text("\$${product.price}"),
                );
              },
            ),
          ),
          Text("Total: \$${getTotal()}",
              style: const TextStyle(fontSize: 22)),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {}, // NO funcional aún
            child: const Text("Pagar"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
