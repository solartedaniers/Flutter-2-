import '../models/product.dart';

// Lista simulada de productos
class SampleProducts {
  static List<Product> getProducts() {
    return [
      Product(
        id: 1,
        name: "Laptop",
        description: "Laptop de alto rendimiento",
        price: 2500,
        image: "https://picsum.photos/200?1",
      ),
      Product(
        id: 2,
        name: "Mouse",
        description: "Mouse ergonómico",
        price: 80,
        image: "https://picsum.photos/200?2",
      ),
      Product(
        id: 3,
        name: "Teclado",
        description: "Teclado mecánico",
        price: 150,
        image: "https://picsum.photos/200?3",
      ),
    ];
  }
}
