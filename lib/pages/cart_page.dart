import 'package:flutter/material.dart';
import '../models/product.dart';

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
      appBar: AppBar(title: const Text("Carrito de Compras")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (_, index) {
                final product = widget.cart[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: Image.network(product.image),
                    title: Text(product.name),
                    subtitle: Text("Precio: \$${product.price}"),
                    trailing: const Icon(Icons.check_circle,
                        color: Colors.green),
                  ),
                );
              },
            ),
          ),
          Text("Total: \$${getTotal()}",
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A00E0))),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Pagar"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
