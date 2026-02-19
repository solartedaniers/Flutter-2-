import 'package:flutter/material.dart';
import '../models/product.dart';

// Widget SIN estado porque no cambia
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  final Function(Product) onAdd; // ← NUEVO

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
    required this.onAdd, // ← NUEVO
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Ir a detalles si toca la tarjeta
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 8)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.image, height: 90),

            const SizedBox(height: 8),

            Text(product.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),

            Text("\$${product.price}",
                style: const TextStyle(color: Colors.white70)),

            const SizedBox(height: 8),

            // 🔥 BOTÓN DIRECTO AL CARRITO
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              ),
              onPressed: () {
                onAdd(product); // ← agrega sin entrar al detalle

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${product.name} agregado al carrito"),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
              child: const Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
