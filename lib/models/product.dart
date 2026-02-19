// Clase modelo Producto (POO)
// Representa la entidad del negocio

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  // Constructor tipado obligatorio
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}
